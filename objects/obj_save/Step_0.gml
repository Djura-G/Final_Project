/// @description Insert description here

if place_meeting(x, y, obj_player)
{
	ini_open("project.ini");
	ini_write_string("save1", "room", room_to_save);
	ini_write_real("save1", "x", obj_player.x);
	ini_write_real("save1", "y", obj_player.y);
	ini_write_real("save1", "facing", obj_player.facing_direction);
	
	if global.party_exists = true
	{
		ini_write_string("save1", "party_exists", global.party_exists);
		
		if global.party_member_1 = obj_archer
		{
			ini_write_real("save1", "party1", global.p0)
		}
		
		if global.party_member_1 = obj_guardian
		{
			ini_write_real("save1", "party1", global.p1)
		}
		
		if global.party_member_2 = obj_archer
		{
			ini_write_real("save1", "party2", global.p0)
		}
		
		if global.party_member_2 = obj_guardian
		{
			ini_write_real("save1", "party2", global.p1)
		}
	}
	
	ini_close();
}

image_angle += 1;