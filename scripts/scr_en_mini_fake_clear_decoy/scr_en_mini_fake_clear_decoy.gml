function scr_en_mini_fake_clear_decoy(){
	for (var i = array_length(decoys) - 1; i >= 0; i--){
		var decoy = array_pop(decoys);
		instance_destroy(decoy);
	}
}