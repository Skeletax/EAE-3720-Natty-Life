/// @description Triggering mid boss fight dialogue

if (player.camera.miniboss){
	if (talking){
		talking = false;
		alarm[1] = room_speed * irandom_range(2, 5);
	}else{
		talking = true;
		dialogue = dialogue_options_trapped[irandom(array_length(dialogue_options_trapped)) - 1];
		alarm[1] = room_speed * irandom_range(2, 3);
	}
}