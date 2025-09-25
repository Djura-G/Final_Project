// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_set_song_in_game(_song, _fadeout = 0, _fadein = 0)
{
	with obj_music_manager
	{
		target_song_asset = _song;
		end_fade_out_time = _fadeout;
		start_fade_in_time = _fadein;
	}
}