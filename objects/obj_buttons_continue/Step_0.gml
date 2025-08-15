/// @description 
ini_open("project.ini")

if image_index = 0 and keyboard_check_pressed(ord("Z"))
{
	audio_play_sound(snd_confirm, 0, false);
	room_goto(global.start_room);
	var _instantiated = instance_create_layer(global.start_x, global.start_y, "Player", obj_player);
	var _cam = instance_create_layer(global.start_x, global.start_y, "Instances", obj_cam);
	global.new_game = false;
}

if image_index = 5 and keyboard_check_pressed(ord("Z"))
{
	file_delete("project.ini");
	game_restart();
}
if image_index = 5 and keyboard_check_pressed(ord("X"))
{
	audio_play_sound(snd_cancel, 0, false);
	image_index = 1;
}

if image_index = 1 and keyboard_check_pressed(ord("Z"))
{
	audio_play_sound(snd_confirm, 0, false);
	image_index = 5;
}

if image_index = 6 and keyboard_check_pressed(ord("Z")) or keyboard_check_pressed(ord("X"))
{
	audio_play_sound(snd_cancel, 0, false);
	image_index = 1;
}

if image_index = 4 and keyboard_check_pressed(ord("Z"))
{
	game_end();
}

ini_close();