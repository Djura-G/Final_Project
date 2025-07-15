// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function scr_walk()
{
	//CONTROL
	
	//MOVEMENT
	if keyboard_check(ord("X"))
	{
		spd = run_spd;
	}else
	{
		spd = walk_spd;
	}
	
	hsp = (keyboard_check(vk_right) - keyboard_check(vk_left));
	vsp = (keyboard_check(vk_down) - keyboard_check(vk_up));
	
	spd_dir = point_direction(x, y, x + hsp, y + vsp)
	
	if hsp != 0 or vsp != 0
	{
		move_spd = spd;
	}
	else
	{
		move_spd = 0;
	}
	
	hsp = lengthdir_x(move_spd, spd_dir);
	vsp = lengthdir_y(move_spd, spd_dir);
	
	//COLLISION
	if place_meeting(x + hsp, y, obj_block)//HORIZONTAL COLLISION
	{
		while !place_meeting(x + sign(hsp), y, obj_block)
		{
			x += sign(hsp);
		}
		
		hsp = 0
	}
	
	if place_meeting(x, y + vsp, obj_block)//VERTICAL COLLISION
	{
		while !place_meeting(x, y + sign(vsp), obj_block)
		{
			y += sign(vsp);
		}
		
		vsp = 0
	}
	
	x += hsp;
	y += vsp;
	
	//ANIMATION
	
	if hsp > 0
	{
		sprite_index = spr_player_walk_right;
	}
	else if hsp < 0
	{
		sprite_index = spr_player_walk_left;
	}
	else if vsp > 0
	{
		sprite_index = spr_player_walk_down;
	}
	else if vsp < 0
	{
		sprite_index = spr_player_walk_up;
	}
	
	if hsp != 0 or vsp != 0
	{
		image_speed = 1;
	}
	else
	{
		image_speed = 0;
		image_index = 0;
	}
	
	//direction facing
	
	if sprite_index = spr_player_walk_right
	{
		facing_direction = 0;
	}
	if sprite_index = spr_player_walk_left
	{
		facing_direction = 1;
	}
	if sprite_index = spr_player_walk_down
	{
		facing_direction = 2;
	}
	if sprite_index = spr_player_walk_up
	{
		facing_direction = 3;
	}
}
