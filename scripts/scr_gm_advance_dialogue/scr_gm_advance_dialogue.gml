function scr_gm_advance_dialogue(){
	if (dialogueinitialized){
		if (array_length(fulldialogue) > 0){
			currentdialogue = fulldialogue[0];
			array_delete(fulldialogue, 0, 1);
		}else{
			openfulldialogue = false;
			scr_gm_finish_dialogue();
		}
	}
}