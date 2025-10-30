/// @description 
depth = -999999

//textbox parameters
textbox_width = 240;
textbox_height = 56;
border = 4;
line_sep = 10;
line_width = textbox_width - border * 2;

txtb_img = 0;
txtb_img_spd = 4 / 60;

arrow_img = 0;
arrow_img_spg = 4 / 60;

//the text
page = 0;
page_number = 0;
text[0] = "";
text_length[0] = string_length(text[0]);

char[0, 0] = "";
char_x[0, 0] = 0;
char_y[0, 0] = 0;

draw_char = 0;
text_spd = 1;

//options
options[0] = "";
option_link_id[0] = -1;
option_pos = 0;
option_number = 0;
op_txtb_spr = spr_option_box;

setup = false;

//sound
snd_delay = 4;
snd_count = snd_delay;

//effects
scr_set_defaults_for_text();
last_free_space = 0;
text_pause_timer = 0;
text_pause_time = 16;