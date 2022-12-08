lose = true;
scr_cm_stop_track(camera);
instance_destroy(arm);
if (instance_exists(shield))
	instance_destroy(shield);
with (camera){
	if (instance_exists(gui_pause_menu))
		instance_destroy(gui_pause_menu);
		
	menu = instance_create_layer(x + 224, y + 96, "Menus", gui_lose_menu);
	with (menu){
		scr_lose_initialize_buttons();
	}
}