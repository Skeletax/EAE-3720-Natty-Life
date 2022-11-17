function scr_gm_finish_dialogue(){
	switch(dialoguespeaker.object_index){
		case obj_npc:
			dialoguespeaker.canfreetalk = true;
			break;
		/*case obj_companion:
			break;*/
	}
	global.totaldialogue = false;
	player.camera.miniboss = false;
	player.camera.reachMiniboss = false;
}