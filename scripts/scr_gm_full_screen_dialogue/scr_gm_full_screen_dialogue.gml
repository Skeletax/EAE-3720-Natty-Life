function scr_gm_full_screen_dialogue(dialoguelist, speaker){
	global.totaldialogue = true;
	array_copy(fulldialogue, 0, dialoguelist, 0, array_length(dialoguelist));
	switch(speaker){
		case "npc":
			dialoguefont = ft_npc_full;
			dialoguecolor = c_black;
			break;
		case "comp":
			break;
	}
	scr_gm_advance_dialogue();
	openfulldialogue = true;
}