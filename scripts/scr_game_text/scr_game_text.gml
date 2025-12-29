/// @param text_id
function scr_game_text(_text_id)
{
	switch(_text_id)
	{
		//-----TESTING DIALOGUES-----//
		#region skull boy
		
			case "skull_boy":
				scr_text("Oi, eu sou um npc!");
				scr_text("Estou testando o diálogo!");
				scr_text("Você sabia que você pode selecionar opções?");
					scr_options("Sim", "skull_boy - yes");
					scr_options("Não", "skull_boy - no");
			break;
				case "skull_boy - yes":
					scr_text("Legal, né?")
				break;
		
				case "skull_boy - no":
					scr_text("Agora você sabe!");
				break;
		
		#endregion
		
		#region skull girl
			case "skull_girl":
				scr_text("Oi, eu sou uma npc!");
				scr_text("Também testo o diálogo!");
				scr_text("Diálogos podem ter cores diferentes, tremer, e ter ondas!");
					scr_text_color(19, 23, c_yellow, c_yellow, c_yellow, c_yellow);
					scr_text_shake(37, 42);
					scr_text_float(51, 55);
				scr_text("Legal né?");
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
		
		case "save":
			scr_text("Jogo Salvo");
		break;
		
		case "quit":
			scr_text("Você tem certeza que quer fechar o jogo?");
				scr_options("Voltar ao menu", "menu");
				scr_options("Fechar jogo", "quit_game");
		break;
				case "menu":
					game_restart();
				break;
				
				case "quit_game":
					game_end();
				break;
	}
}