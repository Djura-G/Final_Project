/// @param text_id
function scr_game_text(_text_id)
{
	switch(_text_id)
	{
		#region npc 1
		
			case "npc 1":
				scr_text("hi i'm npc 1!");
				scr_text("npc 1 is autistic!");
				scr_text("do you like jojo's bizarre adventures?");
					scr_options("yeah", "npc 1 - yes");
					scr_options("no", "npc 1 - no");
			break;
				case "npc 1 - yes":
					scr_text("OH MAY GAH I LOVE IT TOO!!!!!>:3T")
				break;
		
				case "npc 1 - no":
					scr_text("Kill yourself ginger ginger ginger ginger ginger ginger ginger ginger ginger ginger ginger ginger ginger ginger ginger");
				break;
		
		#endregion
		
		case "npc 2":
			scr_text("hi i'm npc 2!");
			scr_text("npc 2 is autistic!");
			scr_text("aiiiiiiiiiiii!");
		break;
		
		case "npc 3":
			scr_text("hi i'm npc 3!");
			scr_text("npc 3 is autistic!");
			scr_text("eaabababababababbabababj!");
		break;
	}
}