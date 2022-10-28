extends Control


var LineNode = preload("res://prefabs/EmpLine.tscn")

func _ready():
	$HTTPRequest.connect("request_completed", self, "_on_request_completed")
	
	$HTTPRequestAdd.connect("request_completed", self, '_add_finish')

	$HTTPRequest.request("http://127.0.0.1:8000/api/employees")
	
func _on_request_completed(result, response_code, headers, body):
	var json = JSON.parse(body.get_string_from_utf8())
	
	for employee in json.result:
		var new_line = LineNode.instance()
		
		var id = employee['id']
		var ename = employee['name']
		var email = employee['email']
		var department = employee['department']
		
		new_line.get_node("IdLabel").text = String(id)
		new_line.get_node("EmailLabel").text = String(email)
		new_line.get_node("DepLabel").text = String(department)
		new_line.get_node("NameLabel").text = String(ename)
		
		get_node("VBoxContainer/PanelBody/ScrollContainer/LinesContainer").add_child(new_line)
		pass
	$ColorRect.visible = false
	#print(json.result)


func _on_Button_pressed(): #add
	
	var lname = $VBoxContainer/PanelBody/ScrollContainer/LinesContainer/AddLine/IName.text
	var email = $VBoxContainer/PanelBody/ScrollContainer/LinesContainer/AddLine/IEmail.text
	var department = $VBoxContainer/PanelBody/ScrollContainer/LinesContainer/AddLine/IDepartment.value
	
	var errorm = ''
	if lname == '':
		errorm = 'ERROR: NAME IS NULL'
	if email == '':
		errorm = 'ERROR: EMAIL IS NULL'
	if department == null:
		errorm = 'ERROR: DEPARTMENT IS NULL'
		
	if errorm != '':
		$Error.visible = true
		$Error/Label.text = errorm
		return
		
	var url = "http://127.0.0.1:8000/api/employees/"
	
	var headers = ["Content-Type: application/json"]
	
	var body = {"name": lname,"email": email,"department": department}

	var error = $HTTPRequestAdd.request(url, headers, true, HTTPClient.METHOD_POST, to_json(body))
	
		
	$ColorRect.visible = true
	
	pass # Replace with function body.

func _add_finish(result, response_code, headers, body):
	
	var json = JSON.parse(body.get_string_from_utf8())
	if response_code == 400:
		$Error.visible = true
		$Error/Label.text = 'ERROR: DEPARTMENT NOT VALID'
		$ColorRect.visible = false
		return
	
	get_tree().change_scene_to(load('res://scenes/emp.tscn'))
	pass
