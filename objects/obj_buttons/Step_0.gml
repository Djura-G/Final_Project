/// @description 

//menu 1

if menu = 1
{
	//start save
	if selected = 0 and global.select_button_pressed
	{
		audio_play_sound(snd_confirm, 0, false);
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
		selected = 0;
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
			control = 0;
			menu = 4;
			selected = 0;
			letter = obj_title.cancel_key;
			timer_2 = 1;
	}
	
	if selected = 2 and global.select_button_pressed
	{
			control = 0;
			menu = 4;
			selected = 0;
			letter = obj_title.sprint_key;
			timer_2 = 1;
	}
	
	if selected = 3 and global.select_button_pressed
	{
			control = 0;
			menu = 4;
			selected = 0;
			letter = obj_title.menu_key;
			timer_2 = 1;
	}
	
	if selected = 4 and global.select_button_pressed
	{
			control = 0;
			menu = 4;
			selected = 0;
			letter = obj_title.up_key;
			timer_2 = 1;
	}
	
	if selected = 5 and global.select_button_pressed
	{
			control = 0;
			menu = 4;
			selected = 0;
			letter = obj_title.down_key;
			timer_2 = 1;
	}
	
	if selected = 6 and global.select_button_pressed
	{
			control = 0;
			menu = 4;
			selected = 0;
			letter = obj_title.left_key;
			timer_2 = 1;
	}
	
	if selected = 7 and global.select_button_pressed
	{
			control = 0;
			menu = 4;
			selected = 0;
			letter = obj_title.right_key;
			timer_2 = 1;
	}
}

//controls

if global.down_button_pressed_1
{
	audio_play_sound(snd_confirm, 1, false);
	selected++;
}

if global.up_button_pressed_1
{
	audio_play_sound(snd_confirm, 1, false);
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