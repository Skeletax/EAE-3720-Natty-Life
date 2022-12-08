if ((!menu.credits && !menu.help) || show){
	if (mouse_check_button_released(mb_left) && clicked){
		clicked = false;
		if (hovered){
			scr_button_main_menu_operate();
		}
	}
}