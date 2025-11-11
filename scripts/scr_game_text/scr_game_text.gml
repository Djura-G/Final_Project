/// @param text_id
function scr_game_text(_text_id)
{
	switch(_text_id)
	{
		//-----TESTING DIALOGUES-----//
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
						scr_text_float(0, 12);
				break;
		
		#endregion
		
		#region blue npc
			case "blue_npc":
				scr_text("hi i'm blue npc!");
				scr_text("blue npc is autistic!");
				scr_text("azul, azul, azul, azul, azul, azul, azul, azul, azul, azul, azul, azul, azul!", "blue_npc");
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