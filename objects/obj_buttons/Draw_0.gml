/// @description 

draw_set_font(fnt_main)

if menu = 1
{
	if selected = 0
	{
		draw_set_color(c_yellow)
	}
	
	else
	{
		draw_set_color(c_white)
	}
	
	draw_text(x, y, "Start Game")
	
	if selected = 1
	{
		draw_set_color(c_yellow)
	}
	
	else
	{
		draw_set_color(c_white)
	}
	
	draw_text(x, y + 30, "Settings")
	
	if selected = 2
	{
		draw_set_color(c_yellow)
	}
	
	else
	{
		draw_set_color(c_white)
	}
	
	draw_text(x, y + 60, "Credits")
	
	if selected = 3
	{
		draw_set_color(c_yellow)
	}
	
	else
	{
		draw_set_color(c_white)
	}
	
	draw_text(x, y + 90, "Close")
}

if menu = 2
{
	if selected = 0
	{
		draw_set_color(c_yellow)
	}
	
	else
	{
		draw_set_color(c_white)
	}
	
	draw_text(x, y, "Language")
	
	if selected = 1
	{
		draw_set_color(c_yellow)
	}
	
	else
	{
		draw_set_color(c_white)
	}
	
	draw_text(x, y + 30, "Controls")
	
	if selected = 2
	{
		draw_set_color(c_yellow)
	}
	
	else
	{
		draw_set_color(c_white)
	}
	
	draw_text(x, y + 60, "Volume")
}

if menu = 3
{
	if selected = 0
	{
		draw_set_color(c_yellow)
	}
	
	else
	{
		draw_set_color(c_white)
	}
	
	draw_text(x, y, "Select - Enter / " + obj_title.select_key)
	
	if selected = 1
	{
		draw_set_color(c_yellow)
	}
	
	else
	{
		draw_set_color(c_white)
	}
	
	draw_text(x, y + 30, "Cancel - " + obj_title.cancel_key)
	
	if selected = 2
	{
		draw_set_color(c_yellow)
	}
	
	else
	{
		draw_set_color(c_white)
	}
	
	draw_text(x, y + 60,"Sprint - Shift / " + obj_title.sprint_key)
	
	if selected = 3
	{
		draw_set_color(c_yellow)
	}
	
	else
	{
		draw_set_color(c_white)
	}
	
	draw_text(x, y + 90,"Menu - " + obj_title.menu_key)
	
	if selected = 4
	{
		draw_set_color(c_yellow)
	}
	
	else
	{
		draw_set_color(c_white)
	}
	
	draw_text(x + 160, y,"Up - W / " + obj_title.up_key)
	
	if selected = 5
	{
		draw_set_color(c_yellow)
	}
	
	else
	{
		draw_set_color(c_white)
	}
	
	draw_text(x + 160, y + 30,"Left - A / " + obj_title.left_key)
	
	if selected = 6
	{
		draw_set_color(c_yellow)
	}
	
	else
	{
		draw_set_color(c_white)
	}
	
	draw_text(x + 160, y + 60,"Down - S / " + obj_title.down_key)
	
	if selected = 7
	{
		draw_set_color(c_yellow)
	}
	
	else
	{
		draw_set_color(c_white)
	}
	
	draw_text(x + 160, y + 90,"Right - D / " + obj_title.right_key)
}