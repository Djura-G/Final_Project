/// @description 

//select

if keyboard_check_pressed(global.select_button) or keyboard_check_pressed(vk_enter)
{
	global.select_button_pressed = true;
}
else 
{
	global.select_button_pressed = false;
}

//sprint

if keyboard_check(global.sprint_button) or keyboard_check(vk_shift)
{
	global.sprint_button_pressed = true;
}
else 
{
	global.sprint_button_pressed = false;
}

//up menu

if keyboard_check_pressed(global.up_button) or keyboard_check_pressed(vk_up)
{
	global.up_button_pressed_1 = true;
}
else 
{
	global.up_button_pressed_1 = false;
}

//up walk / battle

if keyboard_check(global.up_button) or keyboard_check(vk_up)
{
	global.up_button_pressed = true;
}
else 
{
	global.up_button_pressed = false;
}

//left menu

if keyboard_check_pressed(global.left_button) or keyboard_check_pressed(vk_left)
{
	global.left_button_pressed_1 = true;
}
else 
{
	global.left_button_pressed_1 = false;
}

//left walk / battle

if keyboard_check(global.left_button) or keyboard_check(vk_left)
{
	global.left_button_pressed = true;
}
else 
{
	global.left_button_pressed = false;
}

//down menu

if keyboard_check_pressed(global.down_button) or keyboard_check_pressed(vk_down)
{
	global.down_button_pressed_1 = true;
}
else 
{
	global.down_button_pressed_1 = false;
}

//down walk / battle

if keyboard_check(global.down_button) or keyboard_check(vk_down)
{
	global.down_button_pressed = true;
}
else 
{
	global.down_button_pressed = false;
}

//right menu

if keyboard_check_pressed(global.right_button) or keyboard_check_pressed(vk_right)
{
	global.right_button_pressed_1 = true;
}
else 
{
	global.right_button_pressed_1 = false;
}

//right walk / battle

if keyboard_check(global.right_button) or keyboard_check(vk_right)
{
	global.right_button_pressed = true;
}
else 
{
	global.right_button_pressed = false;
}