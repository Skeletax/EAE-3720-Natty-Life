draw_self();
draw_sprite(spr_en_hp, 0, x - hpBarWidth/2, y - 36);
draw_sprite_ext(spr_en_hp, 1, x - hpBarWidth/2, y - 36, hp / maxhp, 1, 0, c_white, 1);