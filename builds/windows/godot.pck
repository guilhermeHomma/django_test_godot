GDPC                                                                                <   res://.import/LOAD.png-0ce383dd93a434a1cc7e3c121b309063.stexPh      �      �~Zr��7ц;�tV��   res://default_env.tres         �       um�`�N��<*ỳ�8   res://prefabs/DepLine.tscn  �      !      �"���
s:��n�   res://prefabs/EmpLine.tscn  �      !      J�;����:�>:M��1   res://project.binaryP�      �      �Z����"m�[��K�,   res://scenes/dep.tscn         �      Q� [k��Ή/=x3;T   res://scenes/emp.tscn   �(      B      ���D���J}S}7   res://scenes/main.tscn  �A      L      +���_sz�#���ҮR(   res://scripts/ButtonDepartments.gd.remap��      4       �5��㕤��尜��5$   res://scripts/ButtonDepartments.gdc @F      �       �:�]��[a�xI1 c(   res://scripts/ButtonEmployees.gd.remap  ��      2       W��|���Wא, x�$   res://scripts/ButtonEmployees.gdc   @G      �       ��˺-�y��,�L�g$   res://scripts/ButtonMenu.gd.remap   0�      -       �M���|kS�_�N�T�   res://scripts/ButtonMenu.gdc0H      �       ��;��[�����>    res://scripts/DeleteDep.gd.remap`�      ,       )��QDu֔�!�ꕌ   res://scripts/DeleteDep.gdc 0I      �      ���޳���*�p�o҈    res://scripts/DeleteEmp.gd.remap��      ,       �CE68�
�<��:J�   res://scripts/DeleteEmp.gdc M      �      ������T���H�"a�$   res://scripts/DepControl.gd.remap   ��      -       L�L�c���y�y;�   res://scripts/DepControl.gdcQ      �	      +|r�m���X-;��@�:$   res://scripts/EmpControl.gd.remap   ��      -       �{�m�<[�ٞ&X   res://scripts/EmpControl.gdc�Z      {      <���ޱȞ=�Eܓ�$   res://scripts/ErrorButton.gd.remap   �      .       �h�Cz��S�&ê�    res://scripts/ErrorButton.gdc    g      /      b�iL�/)jS����H    res://sprites/LOAD.png.import          �      �? f!�eg�{W        [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             [gd_scene load_steps=2 format=2]

[ext_resource path="res://scripts/DeleteDep.gd" type="Script" id=1]

[node name="DepLine" type="HBoxContainer"]
margin_top = 28.0
margin_right = 946.0
margin_bottom = 48.0
script = ExtResource( 1 )

[node name="IdLabel" type="Label" parent="."]
margin_top = 8.0
margin_right = 233.0
margin_bottom = 22.0
size_flags_horizontal = 3
text = "ID"
align = 1
autowrap = true

[node name="NameLabel" type="Label" parent="."]
margin_left = 237.0
margin_top = 8.0
margin_right = 471.0
margin_bottom = 22.0
size_flags_horizontal = 3
text = "NAME"
align = 1
autowrap = true

[node name="null2" type="Label" parent="."]
margin_left = 475.0
margin_right = 708.0
margin_bottom = 31.0
size_flags_horizontal = 3
text = "
"
align = 1
autowrap = true

[node name="DeleteB" type="Button" parent="."]
margin_left = 712.0
margin_right = 946.0
margin_bottom = 31.0
size_flags_horizontal = 3
text = "DELETE"

[node name="HTTPRequest" type="HTTPRequest" parent="."]

[connection signal="pressed" from="DeleteB" to="." method="_on_DeleteB_pressed"]
               [gd_scene load_steps=2 format=2]

[ext_resource path="res://scripts/DeleteEmp.gd" type="Script" id=1]

[node name="EmpLine" type="HBoxContainer"]
margin_top = 28.0
margin_right = 946.0
margin_bottom = 48.0
script = ExtResource( 1 )

[node name="IdLabel" type="Label" parent="."]
margin_top = 8.0
margin_right = 186.0
margin_bottom = 22.0
size_flags_horizontal = 3
text = "ID"
align = 1
autowrap = true

[node name="NameLabel" type="Label" parent="."]
margin_left = 190.0
margin_top = 8.0
margin_right = 376.0
margin_bottom = 22.0
size_flags_horizontal = 3
text = "NAME"
align = 1
autowrap = true

[node name="EmailLabel" type="Label" parent="."]
margin_left = 380.0
margin_right = 566.0
margin_bottom = 31.0
size_flags_horizontal = 3
text = "EMAILdsfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdf"
align = 1
autowrap = true

[node name="DepLabel" type="Label" parent="."]
margin_left = 570.0
margin_top = 8.0
margin_right = 756.0
margin_bottom = 22.0
size_flags_horizontal = 3
text = "DEPARTMENT"
align = 1
autowrap = true

[node name="DeleteButton" type="Button" parent="."]
margin_left = 760.0
margin_right = 946.0
margin_bottom = 31.0
size_flags_horizontal = 3
text = "DELETE"

[node name="HTTPRequest" type="HTTPRequest" parent="."]

[connection signal="pressed" from="DeleteButton" to="." method="_on_DeleteButton_pressed"]
               [gd_scene load_steps=7 format=2]

[ext_resource path="res://scripts/ButtonMenu.gd" type="Script" id=1]
[ext_resource path="res://sprites/LOAD.png" type="Texture" id=2]
[ext_resource path="res://scripts/DepControl.gd" type="Script" id=3]
[ext_resource path="res://scripts/ErrorButton.gd" type="Script" id=4]

[sub_resource type="Animation" id=1]
length = 0.001
loop = true
tracks/0/type = "value"
tracks/0/path = NodePath(".:rotation_degrees")
tracks/0/interp = 1
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"times": PoolRealArray( 0 ),
"transitions": PoolRealArray( 1 ),
"update": 0,
"values": [ 0.0 ]
}

[sub_resource type="Animation" id=2]
resource_name = "default"
loop = true
tracks/0/type = "value"
tracks/0/path = NodePath(".:rotation_degrees")
tracks/0/interp = 1
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"times": PoolRealArray( 0, 1 ),
"transitions": PoolRealArray( 1, 1 ),
"update": 0,
"values": [ 0.0, 360.0 ]
}

[node name="Node2D" type="Node2D"]

[node name="Control" type="Control" parent="."]
margin_right = 1024.0
margin_bottom = 600.0
script = ExtResource( 3 )

[node name="Label" type="Label" parent="Control"]
anchor_left = 0.5
anchor_right = 0.5
margin_left = -94.5
margin_right = 94.5
margin_bottom = 39.0
text = "DEPARTMENTS"
align = 1
valign = 1

[node name="Button" type="Button" parent="Control"]
margin_left = 34.0
margin_top = 22.0
margin_right = 166.0
margin_bottom = 69.0
text = "BACK"
script = ExtResource( 1 )

[node name="VBoxContainer" type="VBoxContainer" parent="Control"]
anchor_left = 0.5
anchor_top = 0.5
anchor_right = 0.5
anchor_bottom = 0.5
margin_left = -480.0
margin_top = -219.0
margin_right = 480.0
margin_bottom = 265.0

[node name="PanelHeader" type="PanelContainer" parent="Control/VBoxContainer"]
margin_right = 960.0
margin_bottom = 45.0

[node name="HBoxContainer" type="HBoxContainer" parent="Control/VBoxContainer/PanelHeader"]
margin_left = 7.0
margin_top = 7.0
margin_right = 953.0
margin_bottom = 38.0

[node name="IdLabel" type="Label" parent="Control/VBoxContainer/PanelHeader/HBoxContainer"]
margin_top = 8.0
margin_right = 233.0
margin_bottom = 22.0
size_flags_horizontal = 3
text = "ID"
align = 1

[node name="NameLabel" type="Label" parent="Control/VBoxContainer/PanelHeader/HBoxContainer"]
margin_left = 237.0
margin_top = 8.0
margin_right = 471.0
margin_bottom = 22.0
size_flags_horizontal = 3
text = "NAME"
align = 1

[node name="null" type="Label" parent="Control/VBoxContainer/PanelHeader/HBoxContainer"]
margin_left = 475.0
margin_right = 708.0
margin_bottom = 31.0
size_flags_horizontal = 3
text = "
"
align = 3

[node name="null2" type="Label" parent="Control/VBoxContainer/PanelHeader/HBoxContainer"]
margin_left = 712.0
margin_right = 946.0
margin_bottom = 31.0
size_flags_horizontal = 3
text = "
"
align = 3

[node name="PanelBody" type="PanelContainer" parent="Control/VBoxContainer"]
margin_top = 49.0
margin_right = 960.0
margin_bottom = 484.0
size_flags_vertical = 3

[node name="ScrollContainer" type="ScrollContainer" parent="Control/VBoxContainer/PanelBody"]
margin_left = 7.0
margin_top = 7.0
margin_right = 953.0
margin_bottom = 428.0

[node name="LinesContainer" type="VBoxContainer" parent="Control/VBoxContainer/PanelBody/ScrollContainer"]
margin_right = 946.0
margin_bottom = 421.0
size_flags_horizontal = 3
size_flags_vertical = 3

[node name="AddLine" type="HBoxContainer" parent="Control/VBoxContainer/PanelBody/ScrollContainer/LinesContainer"]
margin_right = 946.0
margin_bottom = 31.0

[node name="Label" type="Label" parent="Control/VBoxContainer/PanelBody/ScrollContainer/LinesContainer/AddLine"]
margin_top = 8.0
margin_right = 233.0
margin_bottom = 22.0
size_flags_horizontal = 3

[node name="IName" type="LineEdit" parent="Control/VBoxContainer/PanelBody/ScrollContainer/LinesContainer/AddLine"]
margin_left = 237.0
margin_right = 471.0
margin_bottom = 31.0
size_flags_horizontal = 3

[node name="null" type="Label" parent="Control/VBoxContainer/PanelBody/ScrollContainer/LinesContainer/AddLine"]
margin_left = 475.0
margin_right = 708.0
margin_bottom = 31.0
size_flags_horizontal = 3
text = "
"
align = 3

[node name="Button" type="Button" parent="Control/VBoxContainer/PanelBody/ScrollContainer/LinesContainer/AddLine"]
margin_left = 712.0
margin_right = 946.0
margin_bottom = 31.0
size_flags_horizontal = 3
text = "ADD"

[node name="ColorRect" type="ColorRect" parent="Control"]
margin_right = 1024.0
margin_bottom = 600.0
color = Color( 0.156863, 0.152941, 0.152941, 0.764706 )

[node name="Sprite" type="Sprite" parent="Control/ColorRect"]
position = Vector2( 503, 314 )
scale = Vector2( 0.2, 0.2 )
texture = ExtResource( 2 )

[node name="AnimationPlayer" type="AnimationPlayer" parent="Control/ColorRect/Sprite"]
autoplay = "default"
anims/RESET = SubResource( 1 )
anims/default = SubResource( 2 )

[node name="Label" type="Label" parent="Control/ColorRect"]
margin_left = 436.0
margin_top = 220.0
margin_right = 572.0
margin_bottom = 295.0
text = "LOADING..."
align = 1
valign = 1
uppercase = true

[node name="Error" type="ColorRect" parent="Control"]
visible = false
margin_right = 1024.0
margin_bottom = 600.0
color = Color( 0.156863, 0.152941, 0.152941, 0.764706 )
script = ExtResource( 4 )

[node name="Label" type="Label" parent="Control/Error"]
margin_left = 403.0
margin_top = 203.0
margin_right = 606.0
margin_bottom = 278.0
text = "ERROR"
align = 1
valign = 1
uppercase = true

[node name="Button" type="Button" parent="Control/Error"]
margin_left = 401.0
margin_top = 280.0
margin_right = 607.0
margin_bottom = 323.0
text = "OK"

[node name="HTTPRequest" type="HTTPRequest" parent="Control"]

[node name="HTTPRequestAdd" type="HTTPRequest" parent="Control"]

[connection signal="pressed" from="Control/Button" to="Control/Button" method="_on_Button_pressed"]
[connection signal="pressed" from="Control/VBoxContainer/PanelBody/ScrollContainer/LinesContainer/AddLine/Button" to="Control" method="_on_Button_pressed"]
 [gd_scene load_steps=7 format=2]

[ext_resource path="res://scripts/ButtonMenu.gd" type="Script" id=1]
[ext_resource path="res://sprites/LOAD.png" type="Texture" id=2]
[ext_resource path="res://scripts/EmpControl.gd" type="Script" id=3]
[ext_resource path="res://scripts/ErrorButton.gd" type="Script" id=4]

[sub_resource type="Animation" id=1]
length = 0.001
tracks/0/type = "value"
tracks/0/path = NodePath(".:rotation_degrees")
tracks/0/interp = 1
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"times": PoolRealArray( 0 ),
"transitions": PoolRealArray( 1 ),
"update": 0,
"values": [ 0.0 ]
}

[sub_resource type="Animation" id=2]
resource_name = "default"
loop = true
tracks/0/type = "value"
tracks/0/path = NodePath(".:rotation_degrees")
tracks/0/interp = 1
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"times": PoolRealArray( 0, 1 ),
"transitions": PoolRealArray( 1, 1 ),
"update": 0,
"values": [ 0.0, 360.0 ]
}

[node name="Node2D" type="Node2D"]

[node name="Control" type="Control" parent="."]
margin_right = 1024.0
margin_bottom = 600.0
script = ExtResource( 3 )

[node name="Label" type="Label" parent="Control"]
anchor_left = 0.5
anchor_right = 0.5
margin_left = -94.5
margin_right = 94.5
margin_bottom = 39.0
text = "EMPLOYEES"
align = 1
valign = 1

[node name="Button" type="Button" parent="Control"]
margin_left = 34.0
margin_top = 22.0
margin_right = 166.0
margin_bottom = 69.0
text = "BACK"
script = ExtResource( 1 )

[node name="VBoxContainer" type="VBoxContainer" parent="Control"]
anchor_left = 0.5
anchor_top = 0.5
anchor_right = 0.5
anchor_bottom = 0.5
margin_left = -480.0
margin_top = -219.0
margin_right = 480.0
margin_bottom = 265.0

[node name="PanelHeader" type="PanelContainer" parent="Control/VBoxContainer"]
margin_right = 960.0
margin_bottom = 45.0

[node name="HBoxContainer" type="HBoxContainer" parent="Control/VBoxContainer/PanelHeader"]
margin_left = 7.0
margin_top = 7.0
margin_right = 953.0
margin_bottom = 38.0

[node name="IdLabel" type="Label" parent="Control/VBoxContainer/PanelHeader/HBoxContainer"]
margin_top = 8.0
margin_right = 186.0
margin_bottom = 22.0
size_flags_horizontal = 3
text = "ID"
align = 1

[node name="NameLabel" type="Label" parent="Control/VBoxContainer/PanelHeader/HBoxContainer"]
margin_left = 190.0
margin_top = 8.0
margin_right = 376.0
margin_bottom = 22.0
size_flags_horizontal = 3
text = "NAME"
align = 1

[node name="EmailLabel" type="Label" parent="Control/VBoxContainer/PanelHeader/HBoxContainer"]
margin_left = 380.0
margin_top = 8.0
margin_right = 566.0
margin_bottom = 22.0
size_flags_horizontal = 3
text = "EMAIL"
align = 1

[node name="DepLabel" type="Label" parent="Control/VBoxContainer/PanelHeader/HBoxContainer"]
margin_left = 570.0
margin_top = 8.0
margin_right = 756.0
margin_bottom = 22.0
size_flags_horizontal = 3
text = "DEPARTMENT"
align = 1

[node name="null" type="Label" parent="Control/VBoxContainer/PanelHeader/HBoxContainer"]
margin_left = 760.0
margin_right = 946.0
margin_bottom = 31.0
size_flags_horizontal = 3
text = "
"
align = 3

[node name="PanelBody" type="PanelContainer" parent="Control/VBoxContainer"]
margin_top = 49.0
margin_right = 960.0
margin_bottom = 484.0
size_flags_vertical = 3

[node name="ScrollContainer" type="ScrollContainer" parent="Control/VBoxContainer/PanelBody"]
margin_left = 7.0
margin_top = 7.0
margin_right = 953.0
margin_bottom = 428.0

[node name="LinesContainer" type="VBoxContainer" parent="Control/VBoxContainer/PanelBody/ScrollContainer"]
margin_right = 946.0
margin_bottom = 421.0
size_flags_horizontal = 3
size_flags_vertical = 3

[node name="AddLine" type="HBoxContainer" parent="Control/VBoxContainer/PanelBody/ScrollContainer/LinesContainer"]
margin_right = 946.0
margin_bottom = 24.0

[node name="Label" type="Label" parent="Control/VBoxContainer/PanelBody/ScrollContainer/LinesContainer/AddLine"]
margin_top = 5.0
margin_right = 186.0
margin_bottom = 19.0
size_flags_horizontal = 3

[node name="IName" type="LineEdit" parent="Control/VBoxContainer/PanelBody/ScrollContainer/LinesContainer/AddLine"]
margin_left = 190.0
margin_right = 376.0
margin_bottom = 24.0
size_flags_horizontal = 3

[node name="IEmail" type="LineEdit" parent="Control/VBoxContainer/PanelBody/ScrollContainer/LinesContainer/AddLine"]
margin_left = 380.0
margin_right = 566.0
margin_bottom = 24.0
size_flags_horizontal = 3

[node name="IDepartment" type="SpinBox" parent="Control/VBoxContainer/PanelBody/ScrollContainer/LinesContainer/AddLine"]
margin_left = 570.0
margin_right = 756.0
margin_bottom = 24.0
size_flags_horizontal = 3

[node name="Button" type="Button" parent="Control/VBoxContainer/PanelBody/ScrollContainer/LinesContainer/AddLine"]
margin_left = 760.0
margin_right = 946.0
margin_bottom = 24.0
size_flags_horizontal = 3
text = "ADD"

[node name="ColorRect" type="ColorRect" parent="Control"]
margin_right = 1024.0
margin_bottom = 600.0
color = Color( 0.156863, 0.152941, 0.152941, 0.764706 )

[node name="Sprite" type="Sprite" parent="Control/ColorRect"]
position = Vector2( 503, 314 )
scale = Vector2( 0.2, 0.2 )
texture = ExtResource( 2 )

[node name="AnimationPlayer" type="AnimationPlayer" parent="Control/ColorRect/Sprite"]
autoplay = "default"
anims/RESET = SubResource( 1 )
anims/default = SubResource( 2 )

[node name="Label" type="Label" parent="Control/ColorRect"]
margin_left = 436.0
margin_top = 220.0
margin_right = 572.0
margin_bottom = 295.0
text = "LOADING..."
align = 1
valign = 1
uppercase = true

[node name="Error" type="ColorRect" parent="Control"]
visible = false
margin_right = 1024.0
margin_bottom = 600.0
color = Color( 0.156863, 0.152941, 0.152941, 0.764706 )
script = ExtResource( 4 )

[node name="Label" type="Label" parent="Control/Error"]
margin_left = 403.0
margin_top = 203.0
margin_right = 606.0
margin_bottom = 278.0
text = "ERROR"
align = 1
valign = 1
uppercase = true

[node name="Button" type="Button" parent="Control/Error"]
margin_left = 401.0
margin_top = 280.0
margin_right = 607.0
margin_bottom = 323.0
text = "OK"

[node name="HTTPRequest" type="HTTPRequest" parent="Control"]

[node name="HTTPRequestAdd" type="HTTPRequest" parent="Control"]

[connection signal="pressed" from="Control/Button" to="Control/Button" method="_on_Button_pressed"]
[connection signal="pressed" from="Control/VBoxContainer/PanelBody/ScrollContainer/LinesContainer/AddLine/Button" to="Control" method="_on_Button_pressed"]
              [gd_scene load_steps=3 format=2]

[ext_resource path="res://scripts/ButtonEmployees.gd" type="Script" id=1]
[ext_resource path="res://scripts/ButtonDepartments.gd" type="Script" id=2]

[node name="main" type="Node2D"]

[node name="Control" type="Control" parent="."]
margin_right = 1024.0
margin_bottom = 600.0

[node name="ButtonDepartments" type="Button" parent="Control"]
anchor_left = 0.5
anchor_top = 0.5
anchor_right = 0.5
anchor_bottom = 0.5
margin_left = -98.5
margin_top = -28.0
margin_right = 98.5
margin_bottom = 28.0
text = "department"
script = ExtResource( 2 )

[node name="ButtonEmployees" type="Button" parent="Control"]
anchor_left = 0.5
anchor_top = 1.0
anchor_right = 0.5
anchor_bottom = 1.0
margin_left = -98.0
margin_top = -404.0
margin_right = 99.0
margin_bottom = -348.0
text = "employees"
script = ExtResource( 1 )

[connection signal="pressed" from="Control/ButtonDepartments" to="Control/ButtonDepartments" method="_on_ButtonDepartments_pressed"]
[connection signal="pressed" from="Control/ButtonEmployees" to="Control/ButtonEmployees" method="_on_ButtonEmployees_pressed"]
    GDSC                  �����ض�    ����������������������������Ҷ��   �������Ӷ���   ��������������ٶ      res://scenes/dep.tscn                                                    3YYYY0�  PQV�  �  PQT�  P�L  PQQ�  -Y`       GDSC                  �����ض�   ��������������������������Ҷ   �������Ӷ���   ��������������ٶ      res://scenes/emp.tscn                      	                  3YY0�  PQV�  �  PQT�  P�L  PQQ�  -Y`             GDSC         	         �����ض�   �����������������Ҷ�   �������Ӷ���   ��������������ٶ      res://scenes/main.tscn                                                      	   3YYYYY0�  PQV�  �  PQT�  P�L  PQQ�  -Y`          GDSC            u      ������������Ķ��   ������������������Ҷ   �������Ӷ���   ���¶���   �������Ӷ���   ������Ӷ   ����������¶   ������¶   �Ҷ�   ������ڶ   ���¶���   ��ڶ   ������Ŷ   ������¶   ���������¶�   ������������󶶶   ��������������������Ҷ��   �����¶�   ������������Ӷ��   ���϶���   ��������������ٶ      Node2D/Control/ColorRect            request_completed         _on_request_completed      &   http://127.0.0.1:8000/api/departments/        Content-Type: application/json        res://scenes/dep.tscn                            
                  &      '   	   2   
   >      E      F      V      W      X      e      q      s      3YYY0�  PQV�  �  PQT�  T�  PQT�  �  �  �  W�  T�  P�  RR�  Q�  �  ;�  �  PW�	  T�
  Q�  ;�  V�  �  �  P�  Q�  ;�  L�  M�  �  W�  T�  P�  R�  R�  R�  T�  QYYY0�  P�  R�  R�  R�  QV�  �  PQT�  P�L  P�  QQ�  -Y`               GDSC            z      ������������Ķ��   �����������������������Ҷ���   �������Ӷ���   ���¶���   �������Ӷ���   ������Ӷ   ����������¶   ������¶   �Ҷ�   ������ڶ   ���¶���   ��ڶ   ������Ŷ   ������¶   ���������¶�   ������������󶶶   ��������������������Ҷ��   �����¶�   ������������Ӷ��   ���϶���   ��������������ٶ      Node2D/Control/ColorRect            request_completed         _on_request_completed      $   http://127.0.0.1:8000/api/employees/      Content-Type: application/json        res://scenes/emp.tscn                                                       	      
   )      4      @      A      H      X      Y      [      \      ]      j      v      x      3YYYYYY0�  PQV�  �  PQT�  T�  PQT�  �  Y�  W�  T�  P�  RR�  Q�  ;�  �  PW�	  T�
  Q�  ;�  V�  �  �  P�  QY�  ;�  L�  M�  W�  T�  P�  R�  R�  R�  T�  Q�  �  -�  �  Y0�  P�  R�  R�  R�  QV�  �  PQT�  P�L  P�  QQ�  -Y`   GDSC   +      =   Q     ������ڶ   �������Ӷ���   �����϶�   ����������¶   ������¶   ������¶   �������������Ҷ�   ��������������������Ҷ��   �����¶�   ������������Ӷ��   ������Ŷ   ���϶���   ���ض���   ��������   ����Ӷ��   ������������������Ў����   ���������¶�   �������Ӷ���   �������Ӷ���   �Ҷ�   ���Ӷ���   �������Ӷ���   ���¶���   ��������Ҷ��   ��������¶��   ������Ӷ   �����������������Ҷ�   ����Ӷ��   ������������Ķ��   ��������϶��   ��������������Ķ   �������������Ķ�   ������Ӷ   ����Ӷ��   �����۶�   ����Ķ��   ����ڶ��   ��ڶ   ���������¶�   �����������   ����������޶   �������Ӷ���   ��������������ٶ      res://prefabs/DepLine.tscn        request_completed         _on_request_completed      %   http://127.0.0.1:8000/api/departments         _add_finish       id        name      IdLabel    	   NameLabel      6   VBoxContainer/PanelBody/ScrollContainer/LinesContainer                      ERROR: NAME IS NULL          &   http://127.0.0.1:8000/api/departments/        Content-Type: application/json        res://scenes/dep.tscn                                                    '   	   3   
   4      A      O      P      X      a      b      j      r      s      t      u      �      �      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /     0     1   
  2     3      4   !  5   (  6   )  7   +  8   ,  9   9  :   A  ;   M  <   O  =   3YYY;�  ?PQYY0�  PQV�  W�  T�  P�  RR�  Q�  W�  T�  P�  Q�  W�  T�  P�  RR�  Q�  Y0�  P�  R�	  R�
  R�  QV�  ;�  �  T�  P�  T�  PQQY�  )�  �  T�  V�  ;�  �  T�  PQ�  �  ;�  �  L�  M�  ;�  �  L�  M�  �  �  �  �  T�  P�  QT�  �  P�  Q�  �  T�  P�  QT�  �  P�  Q�  �  P�	  QT�  P�  Q�  -�  �  W�  T�  �
  YYY0�  PQV�  �  ;�  W�  �  �  �  �   �!  T�  �  �  ;�"  �  �  &�  �  V�  �"  �  �  �  &�"  �  V�  W�#  T�  �  �  W�#  �$  T�  �"  �  .�  �  ;�%  �  �  �  ;�
  L�  M�  �  ;�  N�  V�  O�  �  �?  P�Q  P�  QQ�  �  W�  T�  P�%  R�
  R�  R�&  T�'  R�Q  P�  QQ�  �  W�  T�  �  �  �  -YY0�(  P�  R�	  R�
  R�  QV�  �?  P�:  P�  QQ�  �)  PQT�*  P�L  P�  QQ�  -Y`          GDSC   1      N   �     ������ڶ   �������Ӷ���   �����϶�   ����������¶   ������¶   �������������Ҷ�   ������¶   ��������������������Ҷ��   �����¶�   ������������Ӷ��   ������Ŷ   ���϶���   ���ض���   ��������   ����Ӷ��   ������������������Ў����   �������Ӷ���   �������Ӷ���   �������Ӷ���   �Ҷ�   ����Ӷ��   ����ڶ��   ���������¶�   �������Ӷ���   ���¶���   ��������Ҷ��   ��������¶��   ������Ӷ   �����������������Ҷ�   ����Ӷ��   ������������Ķ��   ��������϶��   ��������������Ķ   �������������Ķ�   ������Ӷ   ����Ӷ��   �����ڶ�   ����������¶   ����Ӷ��   �����۶�   ����Ķ��   ����ڶ��   ��ڶ   ����Ķ��   ���������¶�   �����������   ����������޶   �������Ӷ���   ��������������ٶ      res://prefabs/EmpLine.tscn        request_completed         _on_request_completed         _add_finish    #   http://127.0.0.1:8000/api/employees       id        name      email      
   department        IdLabel    
   EmailLabel        DepLabel   	   NameLabel      6   VBoxContainer/PanelBody/ScrollContainer/LinesContainer                      ERROR: NAME IS NULL       ERROR: EMAIL IS NULL          ERROR: DEPARTMENT IS NULL            $   http://127.0.0.1:8000/api/employees/      Content-Type: application/json     �        ERROR: DEPARTMENT NOT VALID       res://scenes/emp.tscn                                                        	   ,   
   -      5      6      C      Q      R      Z      c      d      l      t      |      �      �      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '     (     )     *     +   !  ,   '  -   +  .   1  /   5  0   6  1   <  2   C  3   L  4   N  5   O  6   T  7   U  8   \  9   ]  :   n  ;   o  <   �  =   �  >   �  ?   �  @   �  A   �  B   �  C   �  D   �  E   �  F   �  G   �  H   �  I   �  J   �  K   �  L   �  M   �  N   3YYY;�  ?PQYY0�  PQV�  W�  T�  P�  RR�  Q�  �  W�  T�  P�  RR�  QY�  W�  T�  P�  Q�  Y0�  P�  R�	  R�
  R�  QV�  ;�  �  T�  P�  T�  PQQ�  �  )�  �  T�  V�  ;�  �  T�  PQ�  �  ;�  �  L�  M�  ;�  �  L�  M�  ;�  �  L�  M�  ;�  �  L�  M�  �  �  T�  P�	  QT�  �  P�  Q�  �  T�  P�
  QT�  �  P�  Q�  �  T�  P�  QT�  �  P�  Q�  �  T�  P�  QT�  �  P�  Q�  �  �  P�  QT�  P�  Q�  -�  W�  T�  �  �  YYY0�  PQV�  �  ;�  W�  �  �   �!  �"  �#  T�  �  ;�  W�  �  �   �!  �"  �$  T�  �  ;�  W�  �  �   �!  �"  �%  T�&  �  �  ;�'  �  �  &�  �  V�  �'  �  �  &�  �  V�  �'  �  �  &�  �  V�  �'  �  �  �  &�'  �  V�  W�(  T�  �  �  W�(  �)  T�  �'  �  .�  �  ;�*  �  �  �  ;�
  L�  M�  �  ;�  N�  V�  R�  V�  R�  V�  OY�  ;�+  W�  T�  P�*  R�
  R�  R�,  T�-  R�Q  P�  QQ�  �  �  W�  T�  �  �  �  -YY0�.  P�  R�	  R�
  R�  QV�  �  ;�  �  T�  P�  T�  PQQ�  &�	  �  V�  W�(  T�  �  �  W�(  �)  T�  �  �  W�  T�  �  �  .�  �  �/  PQT�0  P�L  P�  QQ�  -Y`     GDSC         
   %      ��������¶��   �����϶�   �����ض�   ������¶   �������������Ҷ�   ������Ӷ      pressed       button_pressed                                  
                           	   #   
   3YYY0�  PQV�  W�  T�  PRR�  Q�  -YY0�  PQV�  �  �  Y` GDST�  �           �  WEBPRIFF�  WEBPVP8Lu  /��c硠m��I�; ���mæv�nfӶ!k��T.� ,��,�B ����{B����=�wk��6۶� X����"���Mv,��ə��0D���}���I�$�ɬ{�`���3	���I�X!��^$����M&�8����kǓ�O�����&q��K<�4*�v)���:���5��rOu��ߞď_�xYG�|G�֘��Z�k����B��㯄?�dҏ����,�\��㏂�e
>�y�q�
��|�o'Ml�[����5�����Y�FTu������6UܠR���&�ʲ�}�q���xn{ʂ�#�U�K'(��x4𥳐*�t������̷o��|��d|"�x��u�j��)�����E�+Ə�l=�a+���yl)F��~���y�`�S��!���Z��?�6�<
?O��q��bi�E��Ә\)�E���Bߞ��.���o�fY�[%�G���;�ӬYƥ<�F�J���緁�2�BT?�oޙs��%��T&�W��(��I�=���n����ܷ-x��\�X��=�=k�m��f٬�wƇE2�$�V��o�d�T"��.��>�ڒ�����b�{ldEsV7��}�m�yYf΢�j1�(��:}ؐ׺D����Ò�ʊf��Þ��1ٰ��nQ{H�XZ�v�?,��]�����3>�q���+}i�d�.;��t��6����+�|���[��F����Yb�d��d	���ns��%��Fq��v������X��KH�(�᧻u�딼�z��w�B�D"f��^�wQ�N`Y���"s,!Y��Ms{?��5J�XnF�� Gs�H�ώ8�4�.jR��������Y�|�u~���\��iW��y�y�i�B�]�G�zZh!R��8N�رλ������ۛx��m�Jv,����MW�&���"N���M[J��z�~���(+Z����M������z���DZ��P�:[=�H�"�������iyɋN79���>��v8E^ފΗj3���j��_��I_)�^�����W)J���]u�R)\|��E4O�XAmu3���_���,ӡ~�䊊W�f�IjS/�Hv�n�v3��(W�8e ���¨.�<Ј}�(���E�.Q�J�Uv&�GʱO���UFT!�}^5�J�?-}>Lf�22F�W]X�Ԑ��)#�Ë&�� �FO�#�)#��R��?yt>���T�AU���Z�����������t8���b�,Ct�}�<���j�_izMy^����ʪ��`ϟ,�<��B�[�g7��ե8���"2��aʟ�k*��'6���,E�7���tE��M��+u<f�c,�^�]S�yqUQ5b0N�sĘ'��s��A��KEՔR=�茵[\���sHz�)���瘯�m�=����Ƞ�~8��	�E���t�1��(��|��FOX�g�؈���P����)C���t=#c�I���N�5�r��:���\Pidp	ά��6�d���&ɘ�d�Sy��A�K��r�N�F�$Ŵm��^��ݐ�ټ��/��ў󪹗OP9�?�c�$�H#�K�	��{�'��B��
=���0���j��}��H��������]$IвKU��
u�09�@�i��'cD\Q���0�<0WL.(Y���-mA��+�9d����Ɲ��L��l����p��"��R��D_h�	=Ay�I�Z�&����j�!�b{iK�r2Cs{���O������O4 ap��T�������9',?��%��_(�<A��w���qƢ�<�� �^��'QKJK��|U�֔	�������E�(�	;p��Dm*��|°��1݁*a���eG�AsHԲ�XsA��J}�G{� �ʆu�k/����ȃ,�x�'�C�?���jciq8������!����U��Y>P�usI��BK
�=J���,��NO_��C�@�a0�֬]:�b���"���p+�Y��RnO[�>PF�Қ�K�8�O�u��� ��Ě��;p�=��	p����f�ǒ���c��2(J�]��/�y�X&��^���=#�k 罊=�pc����FCg�:������ʞ G��k�C���>>��9߸��0�pi����q)��Oѻ���x��{/���±�����L8�|KPG���Y���l�u��lg�F�)�w� 8��<�p�Z,�͜�k�sy�/hS^�!Z�#g_�.�������!xA�x< �e.t�1����#h��zKa垠N⢬�G6n��r���H� N~2r��Q܇G�d�Kp��*RwB*}f�����58"%Zh�����*1�L��e�6;�\%�G���=�0ۿ� p��2��v�oՉ�~�I3�Z�i�<�q�����m�n�<H�
8"Aǁ�s)��x��q.W�rJw�پ&Z�>�n��f�>�+�#��nj�8�z�ĕ�)���?�A�e{�gf.$3h�@����1�����D(Cc)����Ɇa��(�ȆKa��nw�ٶ�4��Z����H��8�-0G8##�$���@í0�v"�_=��	h�1��[�
�F�硙3	�n?����}�Y|2n�2�({+C��Z�>��v��VB��ϡ��&�S���%���-X��2�ҹP�6e��"��F�)f�S��l)����sh?߉>ӽ���rL���8��7�O8��OC�&�Ϟ���j�>�nu��bư̲��_���p1����0#K��=�%��Ԃ����^Ò���q4lրu����&������S��j��W��8J��k�zՁY�!-8&�P�c�jX����?_���I�\���<.p�̸ٰ�;�Y�@�@:�Y��p��E���;_p֕˕�a�\B����a�q	Vwa,����w,	�9�L�X.k�Mh�As8˰F��ОÒC��H��|���dlޝ�f l.�9<`9�&�-ڗKi�/��N��Ԟ��qV��I�\M�aH; 䒀�K�T �3X��6�{a �4	Y'�p�SalB�l�^��'d l��<.����e �T��Z�g?����Ca��1���oi��>��ʰcH��c��F�a�2СFB��0 6I�gB'��Ρ�!d}�zn�є��>���]8�X�Am�IRP��9��/O��ⱆv'��+�����=���x<z	`���H��G m�ĉP�F_ �FZu'��/π���4���q
T��F"�qp!�X�a�'"O=N�	0�\3�? p�\	�|:�J@bh,98Ъh�d�H�+�M)'΃8|�)c���7�v>����n�k�q������1�.�J��n.�m��!O�'ۚWh��'OX�NJr������iP�Y{3N��#����+cz����s4�O�q �$�$�W�J�0�����e��b�A0U���͗�*� ��0�������n�;g��u5f�Pv_�GI��\q�@�C����Ӡ<����-@��`�/n��ch�T�,�ǝ�������	�xq��z;���l0
����
�	l�t� �Ya2��s�g$H���	�x8����H�������R^��b�d܌����r�s.�#�q�\��.�Cr�)�FG��h~xq
�zm�$?�[N�X��9���mE����>�����#ˎ<�+���|��b���.d]�@�ѹoĻ�ow�����7�2�v�k k�Z�ůn �"N�o}����y6pǠǋ��m��
r��� �v�7�b��Am���+袸��A�9��0���^��Ǖ"@2����F�t�yd��B��sC�+��Pp��{���!� Y��K(����������VZ�x���6�Y<�;x�Q�ڵ�{B�^w��|��X���C�q*�P����8a�<8����؀gS+�6k-��xm����Z�S�ac��?�.���H�z��p�#k	bY�DR�Epw7e�ϾechЀB�^Yg1lL��zX*<P����7�쩴7���M�@[�[g0��:�Ta�C8�cQ\��J�>� ��{n�x�­,��ƚ��v �A@PPgx�g��XA��OP��\��'Q�z����dD�=��A��VO4.Eq��ၜ��O�L.6۰�W�g��m��Ǳ(�M���3Dy�^�C�%�H�)�J&{Ž��`+�f���a�Fɲq=Ql��c��̓�wްA���X�BB�������6P��J�DJ�>��*n#��%S�#���|�L������5�5[h	W�	��7~~~��L�(��.���hp�3�j���/�XC��lW�iq _����/D����@�������=*�%�U���mhr�g��=�}�r������2����6ߑQ��܅c�`KL%����:�Z���	���?d^+1��߱YW�.c�������-A��ջ�l	�4;���\�FVi��}ǵ��u;�_.FE$�����������1F�Q�vy�#�S?.�i�o�e����ž,0c�kk�Z3���Ӏ�m�r7|4�4=�������V�mq]Og��1Y@���-i{�D`�O�Z���;Z0���-���M��̤��a��NY��^��ȭ-�d�Y�&��:W�c��$b�Y-]�!9U��O.�40HT
;�06$��V_yN�!"Z�l�mP�G$�Q�'r�Bh�-cy��L�*7UP�µ������AK��Y�c��4�)&%Z�����D������E-ϩ�
��mm�X�7R�Q�o�5cS�f���OT�bTh���X�/�E�h~�(��[�1�gS�GT]зB+Mַ�nV��=���(���� l�8Ռ�L+:�J�����lȞV��"��#�X5J尥-�2-�T��hg@Y���Wm�4fU���۟�<MC�2���Z%l��
�h��&�3Y�}�̒_[�3�i�e�W>O�~����_�7AO����+o�iV�ދ��\�[�۰$S#H_���IO���!U��J%?*U�(��?�T�f��_����?G���x^�M��?�P���YH��L"t�g>��C�I�(B�?C0����i�`U(T�kH��rl���/f�`j
�1i�֩Z�eԭU�0s	ݛ�b�P3Z�8�5�0S�i~��i7s�a6;k�nF*F(F#xS�+�0l4�˘U�iP�Oŗ�rC���֔�Y��Ytl:���W��j�����8�bKK;��?�UL1)�oVu�I�P-�"��Sa��i�M���Եa��l�oEEC[VF�Lmʔ��&B���A��6A��4�lw��v��C��r��bAx*�5�P�Ց�S���+%ud��F�`Q���-C@�2�d@�h���ԑ�"?aDA��#���y�8��Y���k���O�T�о��g�
Ȭ�'��F�j�r�<��%ۛ�N5���Rފ;*�I+���U��Yq�	I�JP�y+�R���Ic-g��V��@Hm��&�x�䮸H!��4.�ܟ�^��}��T��N7�'T4�������?7"��0�N���K�����R��h�k�        [remap]

importer="texture"
type="StreamTexture"
path="res://.import/LOAD.png-0ce383dd93a434a1cc7e3c121b309063.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://sprites/LOAD.png"
dest_files=[ "res://.import/LOAD.png-0ce383dd93a434a1cc7e3c121b309063.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
      [remap]

path="res://scripts/ButtonDepartments.gdc"
            [remap]

path="res://scripts/ButtonEmployees.gdc"
              [remap]

path="res://scripts/ButtonMenu.gdc"
   [remap]

path="res://scripts/DeleteDep.gdc"
    [remap]

path="res://scripts/DeleteEmp.gdc"
    [remap]

path="res://scripts/DepControl.gdc"
   [remap]

path="res://scripts/EmpControl.gdc"
   [remap]

path="res://scripts/ErrorButton.gdc"
  ECFG      application/config/name         django_test    application/run/main_scene          res://scenes/main.tscn  +   gui/common/drop_mouse_on_gui_input_disabled         )   physics/common/enable_pause_aware_picking         $   rendering/quality/driver/driver_name         GLES2   %   rendering/vram_compression/import_etc         &   rendering/vram_compression/import_etc2          )   rendering/environment/default_environment          res://default_env.tres         