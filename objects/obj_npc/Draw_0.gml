draw_self();
if (talking){
	draw_sprite_ext(spr_dialogue_box_npc, 0, x + (image_xscale * 24), y - (60 + sprite_get_height(spr_dialogue_box_npc)), image_xscale, 1, 0, c_white, 1);
	draw_set_font(ft_npc);
	draw_text(x + (image_xscale * 24) + 6, y - (60 + sprite_get_height(spr_dialogue_box_npc) - 4), dialogue);
}