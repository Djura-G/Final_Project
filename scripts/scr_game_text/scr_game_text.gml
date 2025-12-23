/// @param text_id
function scr_game_text(_text_id)
{
	switch(_text_id)
	{
		//-----TESTING DIALOGUES-----//
		#region white npc
		
			case "skull_boy":
				scr_text("Hi i'm skull boy!");
				scr_text("I'm testing the dialog!");
					scr_text_color(16, 21, c_yellow, c_yellow, c_white, c_white);
				scr_text("Did you know that you can choose options?");
					scr_options("yeah", "skull_boy - yes");
					scr_options("no", "skull_boy - no");
			break;
				case "skull_boy - yes":
					scr_text("Cool, right?")
				break;
		
				case "skull_boy - no":
					scr_text("Now you know!");
						scr_text_float(0, 12);
				break;
		
		#endregion
		
		#region blue npc
			case "skull_girl":
				scr_text("Hi i'm skull girl!");
				scr_text("dialogs can have different colours!");
					scr_text_color(17, 33, c_yellow, c_yellow, c_yellow, c_yellow);
				scr_text("it can shake!");
					scr_text_shake(7, 11);
				scr_text("it can also have waves");
					scr_text_float(17, 21);
			break;
		#endregion
		
		//-----BEDROOM DIALOGUES-----//
		#region bedroom dialogues
		
			case "bedroom_bookshelf":
				scr_text("Vários, livros, a maioria didáticos.");
				scr_text("Até que eu gostaria de ler outra coisa além disso.");
				scr_text("Mas se eu não passar nesse concurso... ");
			break;
		
			case "bedroom_pc":
				scr_text("Tenho esse pc desde o primeiro ano.");
				scr_text("Tenho vários jogos, mas não tenho tempo pra jogá-los.");
				scr_text("Nem sequer tenho vontade.");
			break;
		
			case "bedroom_bed":
				scr_text("Tô sem sono");
			break;
		
			case "bedroom_toys":
				scr_text("Aquela minha coleção de pelúcias.");
				scr_text("Tão bem velhas. Tenho desde bem pequeno.");
				scr_text("Desde antes dela...");
					scr_text_color(12, 15, c_yellow, c_yellow, c_yellow, c_yellow);
				scr_text("...");
				scr_text("Gosto dessas pelúcias, ela gostava também.");
					scr_text_color(23, 25, c_yellow, c_yellow, c_yellow, c_yellow);
			break;
			
			case "bedroom_box":
				scr_text("Algumas coisas velhas. Bem velhas");
			break;
		
		#endregion
	}
}