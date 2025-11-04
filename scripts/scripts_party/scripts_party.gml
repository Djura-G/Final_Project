// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_party(party_member_1, party_member_2, disband)
{
	if disband = false
	{	
		global.party_exists = true;
		
		global.party_member_1 = party_member_1;
		global.party_member_2 = party_member_2;
		
		if !instance_exists(party_member_1)
		{
			instance_create_layer(obj_player.x, obj_player.y, "player", party_member_1)
		}
		
		if !instance_exists(party_member_2)
		{
			instance_create_layer(obj_player.x, obj_player.y, "player", party_member_2)
		}
		
		global.party_member_1_follow_distance = 25;
		global.party_member_2_follow_distance = 50;
		
		global.party_member_1.inparty = true;
		global.party_member_2.inparty = true;
	}
	else
	{
		global.party_exists = false;
	}
}