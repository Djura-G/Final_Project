// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_set_song_in_game(_song, _fadeout = 0, _fadein = 0, _songoverlap = false, song_pitch = 1)
{
	//_song = set to any song (including "noone" or 0 to stop the song or fade the track out)
	//_fadeout = time (in frames) the current song (if playing) will take to fade out
	//_fadein = time (in frames) the current song (if playing) will take to fade in
	//_overlap = should the new song overlap with any old songs playing?
	
	with obj_music_manager
	{
		target_song_asset = _song;
		end_fade_out_time = _fadeout;
		start_fade_in_time = _fadein;
		overlap = _songoverlap;
		pitch = song_pitch;
	}
}