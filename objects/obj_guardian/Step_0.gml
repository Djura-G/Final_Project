//animate

if inparty = true
{
	sprite_index = spr_guardian_walk_right;
}
else if inparty = true
{
	sprite_index = spr_guardian_walk_left;
}
else if inparty = true
{
	sprite_index = spr_guardian_walk_down;
}
else if inparty = true
{
	sprite_index = spr_guardian_walk_up;
}

//party follow

if inparty = true and obj_player.follow_points > 0
{
	npc_mode = false;
	
	if global.entered_new_room = true
	{
		if global.new_room_facing = spr_player_walk_right
		{
			sprite_index = spr_guardian_walk_right;
			new_room_facing = sprite_index;
		}
		
		if global.new_room_facing = spr_player_walk_left
		{
			sprite_index = spr_guardian_walk_left;
			new_room_facing = sprite_index;
		}
		
		if global.new_room_facing = spr_player_walk_down
		{
			sprite_index = spr_guardian_walk_down;
			new_room_facing = sprite_index;
		}
		
		if global.new_room_facing = spr_player_walk_up
		{
			sprite_index = spr_guardian_walk_up;
			new_room_facing = sprite_index;
		}
		
		if sprite_index != new_room_facing
		{
			global.entered_new_room = false;
		}
	}
	
	if global.party_member_1 = self
	{
		switch obj_player.past_facing[global.party_member_1_follow_distance]
		{
			case spr_player_walk_right:
				sprite_index = spr_guardian_walk_right;
			break;
		
			case spr_player_walk_left:
				sprite_index = spr_guardian_walk_left;
			break;
		
			case spr_player_walk_down:
				sprite_index = spr_guardian_walk_down;
			break;
		
			case spr_player_walk_up:
				sprite_index = spr_guardian_walk_up;
			break;
		}
	
		if obj_player.player_x[global.party_member_1_follow_distance] != 0
		{
			x = obj_player.player_x[global.party_member_1_follow_distance];
			y = obj_player.player_y[global.party_member_1_follow_distance];
		}
		else
		{
			if instance_exists(obj_fade)
			{
				x = obj_fade.target_x;
				y = obj_fade.target_y;
			}
		}
	}
	else 
	{
		switch obj_player.past_facing[global.party_member_2_follow_distance]
		{
			case spr_player_walk_right:
				sprite_index = spr_guardian_walk_right;
			break;
		
			case spr_player_walk_left:
				sprite_index = spr_guardian_walk_left;
			break;
		
			case spr_player_walk_down:
				sprite_index = spr_guardian_walk_down;
			break;
		
			case spr_player_walk_up:
				sprite_index = spr_guardian_walk_up;
			break;
		}
	
		if obj_player.player_x[global.party_member_2_follow_distance] != 0
		{
			x = obj_player.player_x[global.party_member_2_follow_distance];
			y = obj_player.player_y[global.party_member_2_follow_distance];
		}
		else
		{
			if instance_exists(obj_fade)
			{
				x = obj_fade.target_x;
				y = obj_fade.target_y;
			}
		}
	}
	
	if x != xprevious or y != yprevious
	{
		image_speed = 1;
	}
	else
	{
		image_speed = 0;
		image_index = 0;
	}
}

if inparty = false
{
	image_speed = 0;
	npc_mode = true;
}