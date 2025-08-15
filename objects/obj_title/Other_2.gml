/// @description 

//variables
global.start_room = rm_bedroom;
global.start_x = 160;
global.start_y = 140;

global.new_game = false;

global.party_exists = false;
global.entered_new_room = false;


//party IDs
global.p0 = 0; //archer
global.p1 = 1; //guardian

//rooms IDs

global.rm0 = 0;//main menu
global.rm1 = 1;//bedroom
global.rm2 = 2;//living room

//if save existis, load it

if file_exists("project.ini")
{
	instance_create_depth(6, 47, 100, obj_buttons_continue);
	
	ini_open("project.ini");
	global.start_room = ini_read_string("save1", "room", 0);
	global.start_x = ini_read_real("save1", "x", 160);
	global.start_y = ini_read_real("save1", "y", 140);
	global.party_member_1 = ini_read_real("save1", "party1", global.p0);
	global.party_member_2 = ini_read_real("save1", "party2", global.p1);
	global.party_exists = ini_read_string("save1", "party_exists", "false");
	ini_close();
}
else
{
	instance_create_depth(6, 54, 100, obj_buttons);
}

//room verification
if global.start_room = 0
{
	global.start_room = rm_main_menu;
}

if global.start_room = 1
{
	global.start_room = rm_bedroom;
}

if global.start_room = 2
{
	global.start_room = rm_living_room;
}

//party members verification
if global.party_exists = true
{
	if global.party_member_1 = 0
	{
		global.party_member_1 = obj_archer;
	}

	if global.party_member_1 = 1
	{
		global.party_member_1 = obj_guardian;
	}

	if global.party_member_2 = 0
	{
		global.party_member_2 = obj_archer;
	}

	if global.party_member_2 = 1
	{
		global.party_member_2 = obj_guardian;
	}
}