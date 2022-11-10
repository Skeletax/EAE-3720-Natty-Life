function scr_hurt(target){
	if (target.object_index == en_miniboss_fake){
		with (target)
			scr_en_mini_fake_clear_decoy();
	}
}