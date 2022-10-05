function scr_deal_damage(target, damage){
	if (target.hp - damage <= 0)
		instance_destroy(target);
	else
		target.hp -= damage;
}