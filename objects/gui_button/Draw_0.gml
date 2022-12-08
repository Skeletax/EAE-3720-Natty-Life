if ((!menu.credits && !menu.help) || immune){
	draw_self();
	draw_set_font(buttonFont);
	draw_set_color(buttonColor);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(x, y, buttonText);
}