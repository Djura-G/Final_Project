/// @description 

room_goto(target_rm);

obj_player.x = target_x;
obj_player.y = target_y;

//facing

if facing = 0
{
	obj_player.sprite_index = spr_player_walk_right;
}

if facing = 1
{
	obj_player.sprite_index = spr_player_walk_left;
}

if facing = 2
{
	obj_player.sprite_index = spr_player_walk_down;
}

if facing = 3
{
	obj_player.sprite_index = spr_player_walk_up;
}

//fade_out

image_speed = -1;