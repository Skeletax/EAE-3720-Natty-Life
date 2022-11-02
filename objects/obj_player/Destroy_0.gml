lose = true;
scr_cm_stop_track(camera);
instance_destroy(arm);
if (instance_exists(shield))
	instance_destroy(shield);