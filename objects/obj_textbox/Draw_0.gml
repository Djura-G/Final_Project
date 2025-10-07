/// @description 

textbox_x = camera_get_view_x(view_camera[0] + 6);
textbox_y = camera_get_view_y(view_camera[0] + 181);

//setup
if setup = false
{
	setup = true;
	draw_set_font(fnt_main);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	
	//loop through the pages
	page_number = array_length(text);
	
	for (var p = 0; p < page_number; p++)
	{
		//find how many characters are on each page and store that number in "text_length" array
		text_length[p] = string_length(text[p]);
		
		text_x_offset[p] = 5
	}
}