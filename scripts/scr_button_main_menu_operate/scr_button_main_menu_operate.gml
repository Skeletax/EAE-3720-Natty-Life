function scr_button_main_menu_operate(){
	switch (Function){
		case "start":
			draw_set_halign(fa_left);
			draw_set_valign(fa_top);
			room_goto(menu.startingRoom);
			break;
		case "help":
			show_message("Simply figure it out. It ain't that hard.");
			break;
		case "quit":
			game_end();
			break;
		case "default":
		default:
			show_message("Ayo Milo get the eh-ra eh-ra out of the pool.");
			break;
	}
}