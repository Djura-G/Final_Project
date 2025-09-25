/// @description play the correct music

if room ==  rm_main_menu
{
	scr_set_song_in_game(sng_main_menu, 0, 120);
}

if room == rm_bedroom or room == rm_living_room
{
	scr_set_song_in_game(sng_majula, 30, 120);
}