/// @description 

//variables
global.start_room = rm_bedroom;
global.start_x = 160;
global.start_y = 140;

global.new_game = false;

//rooms ids

global.rm0 = 0;//main menu
global.rm1 = 1;//bedroom
global.rm2 = 2;//living room

//if save existis, load it

if file_exists("project.ini")
{
	ini_open("project.ini");
	global.start_room = ini_read_string("Save1", "room", rm_bedroom);
	global.start_x = ini_read_real("Save1", "x", 160);
	global.start_y = ini_read_real("Save1", "y", 140);
	ini_close();
}

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