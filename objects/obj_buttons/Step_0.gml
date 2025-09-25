/// @description 

//menu 1

if menu = 1
{
	//start save
	if selected = 0 and global.select_button_pressed
	{
		room_goto(global.start_room);
		var _instantiated = instance_create_layer(global.start_x, global.start_y, "Player", obj_player);
		var _cam = instance_create_layer(global.start_x, global.start_y, "Instances", obj_cam);
		global.new_game = false;
	}
	
	//settings
	if selected = 1 and global.select_button_pressed
	{
		menu = 2;
		selected = 0;
	}
	
	//close game
	if selected = 3 and global.select_button_pressed
	{
		game_end();
	}
}

//menu 2

if menu = 2
{
	//controls
	
	if selected = 1 and global.select_button_pressed
	{
		menu = 3;
		selected = 0;
		timer = 1;
	}
	
	//cancel
	
	if keyboard_check_pressed(global.cancel_button)
	{
		menu = 1
		selected = 1;
	}
}

//menu 3 (controls)

if menu = 3
{
	if timer <= 0
	{
		if selected = 0 and global.select_button_pressed
		{
			control = 0;
			menu = 4;
			selected = 0;
			letter = obj_title.select_key;
			timer_2 = 1;
		}
	}
	
	timer--
	
	if selected = 1 and global.select_button_pressed
	{
			control = 1;
			menu = 4;
			selected = 0;
			letter = obj_title.cancel_key;
			timer_2 = 1;
	}
	
	if selected = 2 and global.select_button_pressed
	{
			control = 2;
			menu = 4;
			selected = 0;
			letter = obj_title.sprint_key;
			timer_2 = 1;
	}
	
	if selected = 3 and global.select_button_pressed
	{
			control = 3;
			menu = 4;
			selected = 0;
			letter = obj_title.menu_key;
			timer_2 = 1;
	}
	
	if selected = 4 and global.select_button_pressed
	{
			control = 4;
			menu = 4;
			selected = 0;
			letter = obj_title.up_key;
			timer_2 = 1;
	}
	
	if selected = 5 and global.select_button_pressed
	{
			control = 5;
			menu = 4;
			selected = 0;
			letter = obj_title.down_key;
			timer_2 = 1;
	}
	
	if selected = 6 and global.select_button_pressed
	{
			control = 6;
			menu = 4;
			selected = 0;
			letter = obj_title.left_key;
			timer_2 = 1;
	}
	
	if selected = 7 and global.select_button_pressed
	{
			control = 7;
			menu = 4;
			selected = 0;
			letter = obj_title.right_key;
			timer_2 = 1;
	}
	
	//cancel
	
	if keyboard_check_pressed(global.cancel_button)
	{
		menu = 2
		selected = 1;
	}
}

//menu 4 {key select}

if menu = 4 and timer_2 <= 0
{
	if selected = 0 and global.select_button_pressed
	{
		letter = "A";
	}
	if selected = 1 and global.select_button_pressed
	{
		letter = "B";
	}
	if selected = 2 and global.select_button_pressed
	{
		letter = "C";
	}
	if selected = 3 and global.select_button_pressed
	{
		letter = "D";
	}
	if selected = 4 and global.select_button_pressed
	{
		letter = "E";
	}
	if selected = 5 and global.select_button_pressed
	{
		letter = "F";
	}
	if selected = 6 and global.select_button_pressed
	{
		letter = "G";
	}
	if selected = 7 and global.select_button_pressed
	{
		letter = "H";
	}
	if selected = 8 and global.select_button_pressed
	{
		letter = "I";
	}
	if selected = 9 and global.select_button_pressed
	{
		letter = "J";
	}
	if selected = 10 and global.select_button_pressed
	{
		letter = "K";
	}
	if selected = 11 and global.select_button_pressed
	{
		letter = "L";
	}
	if selected = 12 and global.select_button_pressed
	{
		letter = "M";
	}
	if selected = 13 and global.select_button_pressed
	{
		letter = "N";
	}
	if selected = 14 and global.select_button_pressed
	{
		letter = "O";
	}
	if selected = 15 and global.select_button_pressed
	{
		letter = "P";
	}
	if selected = 16 and global.select_button_pressed
	{
		letter = "Q";
	}
	if selected = 17 and global.select_button_pressed
	{
		letter = "R";
	}
	if selected = 18 and global.select_button_pressed
	{
		letter = "S";
	}
	if selected = 19 and global.select_button_pressed
	{
		letter = "T";
	}
	if selected = 20 and global.select_button_pressed
	{
		letter = "U";
	}
	if selected = 21 and global.select_button_pressed
	{
		letter = "V";
	}
	if selected = 22 and global.select_button_pressed
	{
		letter = "W";
	}
	if selected = 23 and global.select_button_pressed
	{
		letter = "X";
	}
	if selected = 24 and global.select_button_pressed
	{
		letter = "Y";
	}
	if selected = 25 and global.select_button_pressed
	{
		letter = "Z";
	}
	
	if control = 0
	{
		ini_open("controls.ini");
		ini_write_string("save", "select", letter);
	}
	if control = 1
	{
		ini_open("controls.ini");
		ini_write_string("save", "cancel", letter);
	}
	if control = 2
	{
		ini_open("controls.ini");
		ini_write_string("save", "sprint", letter);
	}
	if control = 3
	{
		ini_open("controls.ini");
		ini_write_string("save", "menu", letter);
	}
	if control = 4
	{
		ini_open("controls.ini");
		ini_write_string("save", "up", letter);
	}
	if control = 5
	{
		ini_open("controls.ini");
		ini_write_string("save", "down", letter);
	}
	if control = 6
	{
		ini_open("controls.ini");
		ini_write_string("save", "left", letter);
	}
	if control = 7
	{
		ini_open("controls.ini");
		ini_write_string("save", "right", letter);
	}
	
	scr_update_controls();
	
	if keyboard_check_pressed(global.cancel_button)
	{
		menu = 3;
		selected = 0;
	}
}

if menu = 4
{
	timer_2--;
	
}

//controls

if global.down_button_pressed_1
{
	selected++;
}

if global.up_button_pressed_1
{
	selected--;
}

if menu = 1
{
	if selected < 0
	{
		selected = 3;
	}
	
	if selected > 3
	{
		selected = 0;
	}
}

if menu = 2
{
	if selected < 0
	{
		selected = 2;
	}
	
	if selected > 2
	{
		selected = 0;
	}
}

if menu = 3
{
	if selected < 0
	{
		selected = 7;
	}
	
	if selected > 7
	{
		selected = 0;
	}
}

if menu = 4
{
	if selected < 0
	{
		selected = 25;
	}
	
	if selected > 25
	{
		selected = 0;
	}
}