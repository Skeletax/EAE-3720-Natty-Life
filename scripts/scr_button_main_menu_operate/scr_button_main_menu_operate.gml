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
			break;
			var ret = instance_create_layer(1760, 960, "Instances", gui_button);
			with (ret){
				Function = "return";
				buttonText = "Return";
				image_xscale = 4.5;
				image_yscale = 3;
				immune = true;
			}
		case "quit":
			game_end();
			break;
		case "credit":
			menu.help = false;
			menu.credits = true;
			var ret = instance_create_layer(x, y, "Instances", gui_button);
			with (ret){
				Function = "return";
				buttonText = "Return";
				image_xscale = 4.5;
				image_yscale = 3;
				immune = true;
			}
			break;
		case "return":
			menu.help = false;
			menu.credits = false;
			instance_destroy(self);
			break;
		case "default":
		default:
			show_message("Ayo Milo get the eh-ra eh-ra out of the pool.");
			break;
	}
}