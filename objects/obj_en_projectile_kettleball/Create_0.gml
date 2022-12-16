xspd = 1;
yspd = 1;
grav = 0;
xdir = 1;

damage = 12.5;

switch(irandom_range(1,4)){
	case 1:
		sprite_index = spr_kettlebell_1;
		break;
	case 2:
		sprite_index = spr_kettlebell_2;
		break;
	case 3:
		sprite_index = spr_kettlebell_3;
		break;
	case 4:
		sprite_index = spr_kettlebell_4;
		break;
}