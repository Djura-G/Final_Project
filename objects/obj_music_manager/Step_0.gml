/// @description 

//play the target song
if song_asset != target_song_asset
{
	//tell the old song to fade out
	if audio_is_playing(song_inst)
	{
		//add our song_inst to our array of songs to fade out
		array_push(fade_out_inst, song_inst);
		//add song_inst's starting volume (so there's no abrupt change of volume)
		array_push(fade_out_inst_vol, fade_in_inst_vol);
		//add the fade_out_inst's fade out frames
		array_push(fade_out_inst_time, end_fade_out_time);
		
		//reset song_inst and song_asset values
		song_inst = -1;
		song_asset = -1;
	}
	
	//play the song if the old one has faded out
	if array_length(fade_out_inst) = 0
	{
		if audio_exists(target_song_asset)
		{
			//play the song and store it's instance in a variable
			song_inst = audio_play_sound(target_song_asset, 4, true);
	
			//start the song's volume at 0
			audio_sound_gain(song_inst, 0, 0)
			fade_in_inst_vol = 0;
		}
	
		//set the song asset to match target song asset
		song_asset = target_song_asset;
	}
}

var _finalvolume = global.music_volume * global.max_music_vol;

//volume control
	//main song volume
	if audio_is_playing(song_inst)
	{
		//fade the song in
		if start_fade_in_time > 0
		{
			if fade_in_inst_vol < 1
			{
				fade_in_inst_vol += 1 / start_fade_in_time;
			}
			else
			{
				fade_in_inst_vol = 1;
			}
		}
		//imidiatly start the song if the fade in time is 0 frames
		else
		{
			fade_in_inst_vol = 1;
		}
	
		//actually set the gain
		audio_sound_gain(song_inst, fade_in_inst_vol * _finalvolume, 0);
	}
	
	//fadding songs out
	for (var i = 0; i < array_length(fade_out_inst); i++)
	{
		//fade the volume
		if fade_out_inst_time[i] > 0
		{
			if fade_out_inst_vol[i] > 0
			{
				fade_out_inst_vol[i] -= 1 / fade_out_inst_time[i];
			}
		}
		//imidiatly cut volume to 0
		else
		{
			fade_out_inst_vol[i] = 0;
		}
		
		//actually set the gain
		audio_sound_gain(fade_out_inst[i], fade_out_inst_vol[i] * _finalvolume, 0);
		
		//stop the song when it's volume is at 0 and remove it from all the arrays
		if fade_out_inst_vol[i] <= 0
		{
			if audio_is_playing(fade_out_inst[i])
			{
				audio_stop_sound(fade_out_inst[i]);
			}
		
			//remove it from the arrays
			array_delete(fade_out_inst, i, 1);
			array_delete(fade_out_inst_vol, i, 1);
			array_delete(fade_out_inst_time, i, 1);
			
			//set the loop back 1 since we just deleted an entry
			i--;
		}
	}