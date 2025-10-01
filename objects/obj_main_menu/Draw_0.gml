/// @description

draw_set_font(fnt_main);

//dynamically get the width and heigth of menu
var _new_w = 0;

for (var i = 0; i < op_length; i++)
{
	var _op_w = string_width(option[menu_level, i]);
	_new_w = max(_new_w, _op_w);
}

width = _new_w + op_border * 2;
height = op_border * 2 + string_height(option[0, 0]) + (op_length - 1) * op_space;

//center menu
x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 2 - width / 2;
y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) / 2 - height / 2;

//draw the menu background
draw_sprite_ext(sprite_index, image_index, x, y, width / sprite_width, height / sprite_height, 0, c_white, 1);

//draw the options
draw_set_valign(fa_top);
draw_set_halign(fa_left);

for (var i = 0; i < op_length; i++)
{
	var _color = c_white;
	if pos = i
	{
		_color = c_yellow;
	}
	draw_text_color(x + op_border, y + op_border + op_space * i, option[menu_level, i], _color, _color, _color, _color, 1);
}