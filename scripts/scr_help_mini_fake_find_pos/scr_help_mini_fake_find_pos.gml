function scr_help_mini_fake_find_pos(){
	var index = irandom(array_length(teleport_points) - 1);
	while (occupied_points[index])
		index = irandom(array_length(teleport_points) - 1);
	return index;
}