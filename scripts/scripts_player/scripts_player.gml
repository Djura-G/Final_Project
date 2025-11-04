// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function scr_walk()
{
	//MOVEMENT
	if global.sprint_button_pressed
	{
		spd = run_spd;
	}else
	{
		spd = walk_spd;
	}
	
	hsp = (global.right_button_pressed - global.left_button_pressed);
	vsp = (global.down_button_pressed - global.up_button_pressed);
	
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

	//step when move key is pressed

	if global.up_button_pressed_1 or global.down_button_pressed_1 or global.left_button_pressed_1 or global.right_button_pressed_1
	{
		image_index = 1;
		endpress = true;
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
	
	//save direction facing
	if place_meeting(x, y, obj_save)
	{
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
	
	//uptade pos to party follow

	if (x != xprevious or y != yprevious) and (!instance_exists(obj_fade))
	{
		for (follow_pos = follow_points - 1; follow_pos > 0; follow_pos--)
		{
			player_x[follow_pos] = player_x[follow_pos - 1];
			player_y[follow_pos] = player_y[follow_pos - 1];
				
			past_facing[follow_pos] = past_facing[follow_pos - 1];	
		}
			
		player_x[0] = x;
		player_y[0] = y;
			
		past_facing[0] = sprite_index;
	}
		
	if instance_exists(obj_textbox)
	{
		state = scr_interaction;
	}
	
	if global.select_button_pressed
	{
		var int_x = 0;
		var int_y = 0;
		var int_dist = 8;
		
		switch facing_direction
		{
			default:
				int_x = x + int_dist;
				int_y = y;
			break;
			
			case 1:
				int_x = x - int_dist;
				int_y = y;
			break;
			
			case 2:
				int_x = x;
				int_y = y + int_dist;
			break;
			
			case 3:
				int_x = x;
				int_y = y - int_dist ;
			break;
		}
		
		instance_create_layer(int_x, int_y + 10, "Player", obj_interaction);
	}
}

function scr_interaction()
{
	if !instance_exists(obj_textbox)
	{
		state = scr_walk;
	}
}