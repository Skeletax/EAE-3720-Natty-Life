function scr_button_main_menu_operate(){
	switch (Function){
		case "start":
			draw_set_halign(fa_left);
			draw_set_valign(fa_top);
			room_goto(menu.startingRoom);
			break;
		case "help":
			menu.credits = false;
			menu.help = true;
			//menu.returnButton.show = true;
			break;
		case "quit":
			game_end();
			break;
		case "credit":
			menu.help = false;
			menu.credits = true;
			//menu.returnButton.show = true;
			break;
		case "return":
			menu.help = false;
			menu.credits = false;
			show = false;
			break;
		case "default":
		default:
			show_message("Ayo Milo get the eh-ra eh-ra out of the pool.");
			break;
	}
}