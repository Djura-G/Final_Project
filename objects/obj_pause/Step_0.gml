/// @description 

if keyboard_check_pressed(ord("X"))
{
	audio_play_sound(snd_cancel, 0, false);
	obj_player.state = scr_walk;
	instance_destroy();
}

if image_index == 3 and keyboard_check_pressed(ord("Z"))
{
	game_restart();
}