/// @description Insert description here

if place_meeting(x, y, obj_player)
{
	ini_open("project.ini");
	ini_write_string("save1", "room", room_to_save);
	ini_write_real("save1", "x", obj_player.x);
	ini_write_real("save1", "y", obj_player.y);
	ini_write_real("save1", "facing", obj_player.facing_direction);
	ini_close();
}