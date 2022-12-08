if (position_meeting(device_mouse_x(0), device_mouse_y(0), gui_button_lose)){
	currentButton.hovered = false;
	currentButton = instance_position(device_mouse_x(0), device_mouse_y(0), gui_button_lose);
	currentButton.hovered = true;
	
}else{
	currentButton.hovered = false;
}