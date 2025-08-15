// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_update_controls()
{
	if file_exists("controls.ini")
	{
		ini_open("controls.ini");
		obj_title.select_key = ini_read_string("save", "select", "Z");
		obj_title.cancel_key = ini_read_string("save", "cancel", "X");
		obj_title.sprint_key = ini_read_string("save", "sprint", "X");
		obj_title.menu_key = ini_read_string("save", "menu", "C");
		obj_title.up_key = ini_read_string("save", "up", "W");
		obj_title.left_key = ini_read_string("save", "left", "A");
		obj_title.down_key = ini_read_string("save", "down", "S");
		obj_title.right_key = ini_read_string("save", "right", "D");
	}
	
	global.select_button = ord(obj_title.select_key);
	global.cancel_button = ord(obj_title.cancel_key);
	global.sprint_button = ord(obj_title.sprint_key);
	global.menu_button = ord(obj_title.menu_key);
	global.up_button = ord(obj_title.up_key);
	global.left_button = ord(obj_title.left_key);
	global.down_button = ord(obj_title.down_key);
	global.right_button = ord(obj_title.right_key);
}