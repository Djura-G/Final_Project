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
var _txbx =  textbox_x +  text_x_offset[page];
var _txby = textbox_y;
txtb_img += txtb_img_spd;
txtb_spr_w = sprite_get_width(txtb_spr);
txtb_spr_h = sprite_get_height(txtb_spr);

op_txtb_spr_w = sprite_get_width(op_txtb_spr);
op_txtb_spr_h = sprite_get_height(op_txtb_spr);

//-----back of the textbox-----//
draw_sprite_ext(txtb_spr, txtb_img, _txbx, _txby, textbox_width / txtb_spr_w, textbox_height / txtb_spr_h, 0, c_white, 1);

#endregion

//-----options-----//
if draw_char = text_length[page] and page = page_number - 1
{
	//option selection
	option_pos += global.down_button_pressed - global.up_button_pressed;
	option_pos = clamp(option_pos, 0, option_number - 1)
	
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
var _drawtext = string_copy(text[page], 1, draw_char);
draw_text_ext(_txbx + border, _txby + 2, _drawtext, line_sep, line_width);