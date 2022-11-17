/// @description Clearing freed dialogue
if (talking){
	talking = false;
	alarm[2] = room_speed * 3;
}else{
	canfreetalk = true;
}