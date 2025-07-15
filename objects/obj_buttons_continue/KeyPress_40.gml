/// @description 
audio_play_sound(snd_confirm, 0, false);

if image_index < 5
{
	if image_index != 4
	{
		image_index += 1;
	}
	else
	{
		image_index = 0;
	}
}
else
{
	if image_index != 6
	{
		image_index += 1;
	}
	else image_index = 5
}