if instance_exists(obj_archer)
{
	if global.up_button_pressed_1 or global.down_button_pressed_1 or global.left_button_pressed_1 or global.right_button_pressed_1
	{
		obj_archer.image_index = 1;
	}
}

if instance_exists(obj_guardian)
{
	if global.up_button_pressed_1 or global.down_button_pressed_1 or global.left_button_pressed_1 or global.right_button_pressed_1
	{
		obj_guardian.image_index = 1;
	}
}

if endpress = true
{
	global.up_button_pressed_1 = false;
	global.down_button_pressed_1 = false;
	global.left_button_pressed_1 = false;
	global.right_button_pressed_1 = false;
	
	endpress = false
}