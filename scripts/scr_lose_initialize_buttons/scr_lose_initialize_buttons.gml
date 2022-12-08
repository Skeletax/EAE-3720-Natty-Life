function scr_lose_initialize_buttons(){
	restartBut = instance_create_layer(x + 240, y + 112, "Buttons", gui_button_lose);
	with (restartBut){
		buttonText = "Restart Level";
		buttonFont = ft_pause_menu;
		buttonColor = c_white;
		Function = "restart";
	}

	menuBut = instance_create_layer(x + 240, y + 112 + 80, "Buttons", gui_button_lose);
	with (menuBut){
		buttonText = "Return to Menu";
		buttonFont = ft_pause_menu;
		buttonColor = c_white;
		Function = "menu";
	}

	quitBut = instance_create_layer(x + 240, y + 112 + 160, "Buttons", gui_button_lose);
	with (quitBut){
		buttonText = "Quit Game";
		buttonFont = ft_pause_menu;
		buttonColor = c_white;
		Function = "quit";
	}
}