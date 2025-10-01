/// @description 

//music volume control
global.max_music_vol = 1;
global.music_volume = 0.5;

//info for the song curently playing / trying to play
song_inst = -1;
song_asset = -1;
target_song_asset = -1;
pitch = 1

end_fade_out_time = 0; //how many frames to fade out the song curently playing
start_fade_in_time = 0; //how many frames to fade in the new song
fade_in_inst_vol = 1; //volume of song_instance

//fading songs out and stopping playing the songs that are no longer playing
fade_out_inst = array_create(0);//the audio instances to fade out
fade_out_inst_vol = array_create(0);//the volumes of individual audio instances
fade_out_inst_time = array_create(0);//how fast the fade out shuld happen

overlap = false;//songs playing at the same time while fadding
/*
audio_sound_loop_start(sng_main_menu, 3)
audio_sound_loop_end(sng_main_menu, 6)