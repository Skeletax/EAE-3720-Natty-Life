function scr_pause_initialize_buttons(){
	resumeBut = instance_create_layer(x + 240, y + 112, "Buttons", gui_button_pause);
	with (resumeBut){
		buttonText = "Resume Game";
		buttonFont = ft_pause_menu;
		buttonColor = c_white;
		Function = "resume";
	}

	helpBut = instance_create_layer(x + 240, y + 112 + 80, "Buttons", gui_button_pause);
	with (helpBut){
		buttonText = "Restart Level";
		buttonFont = ft_pause_menu;
		buttonColor = c_white;
		Function = "restart";
	}

	quitBut = instance_create_layer(x + 240, y + 112 + 160, "Buttons", gui_button_pause);
	with (quitBut){
		buttonText = "Return to Menu";
		buttonFont = ft_pause_menu;
		buttonColor = c_white;
		Function = "menu";
	}
}