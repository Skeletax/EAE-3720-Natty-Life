if (!global.paused){
	if (despawn){
		despawncounter++;
		if (despawncounter >= despawntimer){
			with (camera){
				if (instance_exists(gui_pause_menu))
					instance_destroy(gui_pause_menu);
			
				menu = instance_create_layer(x + 224, y + 96, "Menus", gui_lose_menu);
				with (menu){
					scr_lose_initialize_buttons();
				}
			}
		}
	}else if (!win && !lose && (!camera.miniboss || (camera.miniboss && camera.reachMiniboss)) && !global.totaldialogue){
		scr_pl_input();

		if (!launched)
			scr_pl_move_jump_collide();
		else
			scr_pl_launch();

		scr_pl_block();

		scr_pl_attack();
	
		scr_pl_animate();

		scr_pl_win_lose();

		scr_pl_update_counters();
	}else if (lose){
		audio_stop_sound(snd_Walking_Dirt);
		scr_pl_animate();
	}if (win){
	
	}
}