function scr_gm_full_screen_dialogue(dialoguelist, speaker, startindex, endindex){
	global.totaldialogue = true;
	switch(speaker.object_index){
		case obj_npc:
			dialoguefont = ft_npc_full;
			dialoguecolor = c_black;
			array_copy(fulldialogue, 0, dialoguelist, startindex, array_length(dialoguelist));
			break;
		case obj_player_companion:
			dialoguefont = ft_pl_companion_full;
			dialoguecolor = c_purple;
			array_copy(fulldialogue, 0, dialoguelist, startindex, endindex - startindex + 1);
			break;
	}
	dialoguespeaker = speaker;
	scr_gm_advance_dialogue();
	openfulldialogue = true;
	dialogueinitialized = false;
	alarm[0] = room_speed * 1;
}