function scr_gm_input(){
	if (hud.openfulldialogue){
		if (keyboard_check_pressed(vk_escape) ||
			keyboard_check_pressed(vk_enter) ||
			keyboard_check_pressed(vk_space) ||
			keyboard_check_pressed(ord("E")) ||
			mouse_check_button_pressed(mb_left))
		{
			with (hud)
				scr_gm_advance_dialogue();
		}
	}else{
		if keyboard_check_pressed(vk_escape) game_end();
		if keyboard_check_pressed(ord("R")) game_restart();
	}
}