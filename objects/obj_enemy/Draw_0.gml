draw_self();
draw_sprite_ext(spr_en_hp, 0, x - hpscale * (hpBarWidth/2), y - 36, hpscale, hpscale, 0, c_white, 1);
draw_sprite_ext(spr_en_hp, 1, x - hpscale * (hpBarWidth/2), y - 36, hpscale * (hp / maxhp), hpscale, 0, c_white, 1);