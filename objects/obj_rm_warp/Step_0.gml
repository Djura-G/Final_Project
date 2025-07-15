/// @description fade

if place_meeting(x, y, obj_player) and !instance_exists(obj_fade)
{
	var _instantiaded = instance_create_depth(0, 0, -9999, obj_fade);
	_instantiaded.target_x = target_x;
	_instantiaded.target_y = target_y;
	_instantiaded.target_rm = target_rm;
	_instantiaded.facing = facing;
}