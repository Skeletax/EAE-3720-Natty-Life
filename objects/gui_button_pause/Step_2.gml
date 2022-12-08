if (mouse_check_button_released(mb_left) && clicked){
	clicked = false;
	if (hovered){
		scr_button_pause_menu_operate();
	}
}