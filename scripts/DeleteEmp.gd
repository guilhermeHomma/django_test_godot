extends HBoxContainer





func _on_DeleteButton_pressed():
	get_tree().root.get_node('Node2D/Control/ColorRect').visible = true

	$HTTPRequest.connect("request_completed", self, "_on_request_completed")
	var id = int($IdLabel.text)
	var url: String = "http://127.0.0.1:8000/api/employees/" + String(id) 

	var headers = ["Content-Type: application/json"]
	$HTTPRequest.request(url, headers,true, HTTPClient.METHOD_DELETE)
	
	pass
	
	
func _on_request_completed(result, response_code, headers, body):
	get_tree().change_scene_to(load('res://scenes/emp.tscn'))
	pass
