draw_self();
draw_sprite(spr_en_hp, 0, x, y - 36);
draw_sprite_ext(spr_en_hp, 1, x, y - 36 - 2.5, (hp / maxhp) * (59 / 64), (11 / 16), 0, c_white, 1);