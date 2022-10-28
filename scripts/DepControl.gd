extends Control


var LineNode = preload("res://prefabs/DepLine.tscn")

func _ready():
	$HTTPRequest.connect("request_completed", self, "_on_request_completed")
	$HTTPRequest.request("http://127.0.0.1:8000/api/departments")
	$HTTPRequestAdd.connect('request_completed',self,'_add_finish')
	
func _on_request_completed(result, response_code, headers, body):
	var json = JSON.parse(body.get_string_from_utf8())

	for department in json.result:
		var new_line = LineNode.instance()
		
		var id = department['id']
		var name = department['name']
		
		
		
		new_line.get_node("IdLabel").text = String(id)
		new_line.get_node("NameLabel").text = String(name)
		get_node("VBoxContainer/PanelBody/ScrollContainer/LinesContainer").add_child(new_line)
		pass
		
	$ColorRect.visible = false


func _on_Button_pressed(): #add
	
	var lname = $VBoxContainer/PanelBody/ScrollContainer/LinesContainer/AddLine/IName.text
	
	var errorm = ''
	if lname == '':
		errorm = 'ERROR: NAME IS NULL'
		
	if errorm != '':
		$Error.visible = true
		$Error/Label.text = errorm
		return
		
	var url = "http://127.0.0.1:8000/api/departments/"
	
	var headers = ["Content-Type: application/json"]
	
	var body = {"name": lname}
	
	print(to_json(body))
	
	$HTTPRequestAdd.request(url, headers, true, HTTPClient.METHOD_POST, to_json(body))
	
	$ColorRect.visible = true
	
	pass # Replace with function body.

func _add_finish(result, response_code, headers, body):
	print(typeof(result))
	get_tree().change_scene_to(load('res://scenes/dep.tscn'))
	pass
