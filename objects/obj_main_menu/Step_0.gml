/// @description 
//store number of options in current menu
op_length = array_length(option[menu_level]);

if global.down_button_pressed_1 or global.up_button_pressed_1
{
	audio_play_sound(snd_speak, 0, false);
}

//move through the menu
pos += global.down_button_pressed_1 - global.up_button_pressed_1;

//keep the pos in the options range
if pos >= op_length
{
	pos = 0;
}

if pos < 0 
{
	pos = op_length - 1;
}

//using the options

if global.select_button_pressed
{
	audio_play_sound(snd_select, 0, false);
	var _sml = menu_level;
	
	switch(menu_level)
	{
		//main menu
		case 0 :
			switch(pos)
			{
				//start game
				case 0:
					room_goto(global.start_room);
					var _instantiated = instance_create_layer(global.start_x, global.start_y, "Player", obj_player);
					var _cam = instance_create_layer(global.start_x, global.start_y, "Instances", obj_cam);
					global.new_game = false;
				break;
	
				//settings
				case 1:
					
				break;
	
				//quit game
				case 2:
					game_end();
				break;
			}
		break;
	}
	
	//set position back
	if _sml != menu_level
	{
		pos = 0;
	}
	
	//correct option length
	op_length = array_length(option[menu_level]);
}