/// @description Variables

hsp = 0;
vsp = 0;

spd = 1;
move_spd = 1;
walk_spd = 1;
run_spd = 1.5;

spd_dir = 0;

facing_direction = 2;

party_follow = false;

endpress = false;

//load direction facing
ini_open("project.ini")
facing_direction = ini_read_real("save1", "facing", 2);
if facing_direction = 0
{
	sprite_index = spr_player_walk_right;
}
if facing_direction = 1
{
	sprite_index = spr_player_walk_left;
}
if facing_direction = 2
{
	sprite_index = spr_player_walk_down;
}
if facing_direction = 3
{
	sprite_index = spr_player_walk_up;
}
ini_close();

//store past position for party

follow_points = 100
for (follow_pos = follow_points - 1; follow_pos >= 0; follow_pos--)
{
	player_x[follow_pos] = x;
	player_y[follow_pos] = y;
	
	past_facing[follow_pos] = sprite_index;
}