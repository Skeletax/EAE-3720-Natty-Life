if (position_meeting(device_mouse_x(0), device_mouse_y(0), gui_button)){
	currentButton.hovered = false;
	currentButton = instance_position(device_mouse_x(0), device_mouse_y(0), gui_button);
	currentButton.hovered = true;
}else{
	currentButton.hovered = false;
}

if (keyboard_check_pressed(vk_escape)){
	credits = false;
	help = false;
}