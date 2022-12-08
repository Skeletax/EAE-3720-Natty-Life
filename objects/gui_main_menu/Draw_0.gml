draw_set_font(titleFont);
if (credits){
	draw_sprite(bg_credits_menu, 0, 0, 0);
}else if (help){
	draw_sprite(bg_controls_menu, 0, 0, 0);
}
/*draw_set_color(titleColor);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x, y, "NATTY LIFE");*/