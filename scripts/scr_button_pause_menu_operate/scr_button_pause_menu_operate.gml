function scr_button_pause_menu_operate(){
	switch (Function){
		case "resume":
			draw_set_halign(fa_left);
			draw_set_valign(fa_top);
			global.paused = false;
			break;
		case "restart":
			room_restart();
			break;
		case "menu":
			room_goto(rm_menus);
			break;
		case "default":
		default:
			show_message("Uh oh... Poopoo... Stinky... Haha");
			break;
	}
}