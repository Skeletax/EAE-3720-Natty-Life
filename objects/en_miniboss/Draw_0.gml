draw_self();
draw_sprite_ext(spr_en_hp, 0, x - hpscale * (hpBarWidth/2), y - 85, hpscale, hpscale, 0, c_white, 1);
draw_sprite_ext(spr_en_hp, 2, x - hpscale * (hpBarWidth/2), y - 85, hpscale * (hp / maxhp), hpscale, 0, c_white, 1);