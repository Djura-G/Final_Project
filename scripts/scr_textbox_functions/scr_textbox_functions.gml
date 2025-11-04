// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function scr_set_defaults_for_text()
{
	line_break_pos[0, page_number] = 999;
	line_break_num[page_number] = 0;
	line_break_offset[page_number] = 0;
	
	//variables for every character/letter
	for (var c = 0; c < 500; c++)
	{
		col_1[c, page_number] = c_white;
		col_2[c, page_number] = c_white;
		col_3[c, page_number] = c_white;
		col_4[c, page_number] = c_white;
		
		float_text[c, page_number] = 0;
		float_dir[c, page_number] = c * 20;
		
		shake_text[c, page_number] = 0;
		shake_dir[c, page_number] = irandom(360);
		shake_timer[c, page_number] = irandom(4);
	}
	
	txtb_spr[page_number] = spr_textbox;
	speaker_spr[page_number] = noone;
	speaker_side[page_number] = 1;
	
	snd[page_number] = snd_speak;
}

//-----Text VFX-----//

//-----color text-----//
/// @param 1st_char
/// @param last_char
/// @param col1
/// @param col2
/// @param col3
/// @param col4
function scr_text_color(_start, _end, _col1, _col2, _col3, _col4)
{
	for (var c = _start; c <= _end; c++)
	{
		col_1[c, page_number - 1] = _col1;
		col_2[c, page_number - 1] = _col2;
		col_3[c, page_number - 1] = _col3;
		col_4[c, page_number - 1] = _col4;
	}
}

//-----floating text-----//
/// @param 1st_char
/// @param last_char
function scr_text_float(_start, _end)
{
	for (var c = _start; c <= _end; c++)
	{
		float_text[c, page_number - 1] = true;
	}
}

//-----shaking text-----//
/// @param 1st_char
/// @param last_char
function scr_text_shake(_start, _end)
{
	for (var c = _start; c <= _end; c++)
	{
		shake_text[c, page_number - 1] = true;
	}
}

/// @param text
/// @param [character]
/// @param [side]
function scr_text(_text)
{
	scr_set_defaults_for_text();
	
	text[page_number] = _text;
	
	//get character info
	if argument_count > 1
	{
		switch argument[1]
		{
			#region white npc
				case "white_npc":
					speaker_spr[page_number] = spr_white_npc_portrait;
				break;
			
				case "white_npc_happy":
					speaker_spr[page_number] = spr_white_npc_happy_portrait;
				break;
			#endregion
			
			#region blue npc
				case "blue_npc":
					speaker_spr[page_number] = spr_blue_npc_portrait;
				break;
			#endregion
		}
	}
	
	//get character side
	if argument_count > 2
	{
		speaker_side[page_number] = argument[2];
	}
	
	page_number++;
}

/// @param option
/// @param link_id
function scr_options(_option, _link_id)
{
	options[option_number] = _option;
	option_link_id[option_number] = _link_id;
	
	option_number++;
}

/// @param text_id
function scr_create_textbox(_text_id)
{
	with (instance_create_depth(0, 0, -99999, obj_textbox))
	{
		scr_game_text(_text_id);
	}
}