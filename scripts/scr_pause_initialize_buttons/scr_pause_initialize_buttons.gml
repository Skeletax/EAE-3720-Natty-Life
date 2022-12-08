function scr_pause_initialize_buttons(){
	resumeBut = instance_create_layer(x + 240, y + 112, "Projectiles", gui_button_pause);
	with (resumeBut){
		buttonText = "Resume Game";
		buttonFont = ft_gui;
		buttonColor = c_black;
	}

	helpBut = instance_create_layer(x + 240, y + 112 + 80, "Projectiles", gui_button_pause);
	with (helpBut){
		buttonText = "Help";
		buttonFont = ft_gui;
		buttonColor = c_black;
	}

	quitBut = instance_create_layer(x + 240, y + 112 + 160, "Projectiles", gui_button_pause);
	with (quitBut){
		buttonText = "Quit";
		buttonFont = ft_gui;
		buttonColor = c_black;
	}
}