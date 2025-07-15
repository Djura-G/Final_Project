/// @description 
audio_play_sound(snd_confirm, 0, false);

if image_index < 5
{
	if image_index != 0 
	{
		image_index += -1;
	}
	else
	{
		image_index = 4;
	}
}
else
{
	if image_index != 5
	{
		image_index += -1;
	}
	else image_index = 6
}