function scr_input(){
	if !win && !lose {
		left =  keyboard_check(vk_left) || keyboard_check(ord("A"));
		right = keyboard_check(vk_right) || keyboard_check(ord("D"));
		up =  keyboard_check(vk_up) || keyboard_check(ord("W"));
		down = keyboard_check(vk_down) || keyboard_check(ord("S"));
		jump = keyboard_check_pressed(vk_space);
		atk = mouse_check_button(mb_left);
	}
	if keyboard_check_pressed(vk_escape) game_end();
	if keyboard_check_pressed(ord("R")) game_restart();
}