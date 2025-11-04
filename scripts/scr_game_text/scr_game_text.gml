/// @param text_id
function scr_game_text(_text_id)
{
	switch(_text_id)
	{
		#region white npc
		
			case "white_npc":
				scr_text("hi i'm white npc!", "white_npc");
				scr_text("white npc is autistic!", "blue_npc", -1);
					scr_text_color(13, 20, c_yellow, c_yellow, c_white, c_white);
				scr_text("do you like jojo's bizarre adventures?", "white_npc");
					scr_text_shake(12, 36);
					scr_options("yeah", "white_npc - yes");
					scr_options("no", "white_npc - no");
			break;
				case "white_npc - yes":
					scr_text("I love it too! It is the best anime ever. What's your favorite anime? Mine's jojo...", "white_npc_happy")
				break;
		
				case "white_npc - no":
					scr_text("Kill yourself", "white_npc");
				break;
		
		#endregion
		
		case "blue_npc":
			scr_text("hi i'm blue npc!");
			scr_text("blue npc is autistic!");
			scr_text("azulazulazulazulazulazulazulazulazulazulazulazulazul!");
		break;
	}
}