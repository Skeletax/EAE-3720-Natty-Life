function scr_button_lose_menu_operate(){
	switch (Function){
		case "restart":
			draw_set_halign(fa_left);
			draw_set_valign(fa_top);
			global.paused = false;
			room_restart();
			break;
		case "menu":
			room_goto(rm_menus);
			break;
		case "quit":
			game_end();
			break;
		case "default":
		default:
			show_message("When you, you when, me when, me when your mom, your mom...");
			break;
	}
}