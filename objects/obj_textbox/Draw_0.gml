/// @description 

textbox_x = camera_get_view_x(view_camera[0]);
textbox_y = camera_get_view_y(view_camera[0])+ 170;

//-----setup-----//
if setup = false
{
	setup = true;
	draw_set_font(fnt_main);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	
	//loop through the pages
	
	for (var p = 0; p < page_number; p++)
	{
		//find how many characters are on each page and store that number in "text_length" array
		text_length[p] = string_length(text[p]);
		
		//get the x position for the textbox
		
			//no char talking (center)
			text_x_offset[p] = 40;
			
		//settings individual characters and fiding where the lines of text should break
		for (var c = 0; c < text_length[p]; c++)
		{
			var _char_pos = c + 1;
			
			//store individual characters in the "char" array
			char[c, p] = string_char_at(text[p], _char_pos);
			
			//get current width of the line
			var _txt_up_to_char = string_copy(text[p], 1, _char_pos);
			var _current_txt_w = string_width(_txt_up_to_char) - string_width(char[c, p]);
			
			//get the last free space
			if char[c, p] = " "
			{
				last_free_space = _char_pos + 1;
			}
			
			//get the line breaks
			if _current_txt_w -	line_break_offset[p] > line_width
			{
				line_break_pos[line_break_num[p], p] = last_free_space;
				line_break_num[p]++;
				var _txt_up_to_last_space = string_copy(text[p], 1, last_free_space);
				var _last_free_space_string = string_char_at(text[p], last_free_space);
				line_break_offset[p] = string_width(_txt_up_to_last_space) - string_width(_last_free_space_string);
			}
			
		}
		
		//getting each character cordinates
		for (var c = 0; c < text_length[p]; c++)
		{
			var _char_pos = c + 1;
			var _txt_x = textbox_x + text_x_offset[p] + border;
			var _txt_y = textbox_y + border;
			
			//get current width of the line
			var _txt_up_to_char = string_copy(text[p], 1, _char_pos);
			var _current_txt_w = string_width(_txt_up_to_char) - string_width(char[c, p]);
			var _txt_line = 0;
			
			//compensate for string breaks
			for (var lb = 0; lb < line_break_num[p]; lb++)
			{
				//if the currrent looping character is after a line break
				if _char_pos >= line_break_pos[lb, p]
				{
					var _str_copy = string_copy(text[p], line_break_pos[lb, p], _char_pos - line_break_pos[lb, p]);
					_current_txt_w = string_width(_str_copy);
					
					//record the "line" this character should be on
					_txt_line = lb + 1;// +1 since lb starts at 0
				}
			}
			
			//add to the  and y cordinates based on the new info
			char_x[c, p] = _txt_x + _current_txt_w;
			char_y[c, p] = _txt_y + _txt_line * line_sep;
		}
			
	}
}

//-----typing the text-----//
if draw_char < text_length[page]
{
	draw_char += text_spd;
	draw_char = clamp(draw_char, 0, text_length[page]);
}

//-----flip through pages-----//
if global.select_button_pressed
{
	//if the typing is done
	if draw_char = text_length[page]
	{
		//next page
		if page < page_number - 1
		{
			page++;
			draw_char = 0;
		}
		
		//destroy textbox
		else
		{
			//link text for options
			if option_number > 0
			{
				scr_create_textbox(option_link_id[option_pos]);
			}
			
			instance_destroy();
		}
	}
	
	//if not done typing
	else
	{
		draw_char = text_length[page];
	}
}

//-----draw the textbox-----//
#region draw textbox
var _txbx =  textbox_x + text_x_offset[page];
var _txby = textbox_y;
txtb_img += txtb_img_spd;
txtb_spr_w = sprite_get_width(txtb_spr[page]);
txtb_spr_h = sprite_get_height(txtb_spr[page]);

op_txtb_spr_w = sprite_get_width(op_txtb_spr);
op_txtb_spr_h = sprite_get_height(op_txtb_spr);

//-----back of the textbox-----//
draw_sprite_ext(txtb_spr[page], txtb_img, _txbx, _txby, textbox_width / txtb_spr_w, textbox_height / txtb_spr_h, 0, c_white, 1);

#endregion

//-----options-----//
if draw_char = text_length[page] and page = page_number - 1
{
	//option selection
	option_pos += global.down_button_pressed - global.up_button_pressed;
	option_pos = clamp(option_pos, 0, option_number - 1);
	
	//draw the options
	var _op_space = 15;
	var _op_border = 4;
	for (var _op = 0; _op < option_number; _op++)
	{
		//the option box
		var _opw = string_width(options[_op]) + _op_border * 2;
		draw_sprite_ext(op_txtb_spr, 0, _txbx + 16, _txby - _op_space * option_number + _op_space * _op, _opw / op_txtb_spr_w, (_op_space - 1) / op_txtb_spr_h, 0, c_white, 1);
		
		//selection arrow
		if option_pos = _op
		{
			draw_sprite(spr_selection_arrow, 0, _txbx, _txby - _op_space * option_number + _op_space * _op);
		}
		
		//the option text
		draw_text(_txbx + 16 + _op_border, _txby - _op_space * option_number + _op_space * _op, options[_op]);
	}
}

//draw the text
for (var c = 0; c < draw_char; c++)
{
	//the text
	draw_text(char_x[c, page], char_y[c, page], char[c, page]);
}