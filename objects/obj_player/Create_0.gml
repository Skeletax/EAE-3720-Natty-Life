audio_stop_all();

left = 0;
right = 0;
up = 0;
down = 0;

hp = maxhp;

xdir = 1;
facing = 1; //1 = right, 2 = left, 3 = up, 4 = down
lastface = 1;

launched = false;
launchdir = 0;
launchspdx = 5;
launchspdy = 20;

xspd = baseSpeed;
yspd = 0;
grav = 1;
jump = 0;
jumppwr = 17;
onGround = true;
drop = 0;

atk = 0;
atkTime = 10;
atkTimeCounter = 0;
atkCooldown = 50;
atkCooldownCounter = 0;
projspd = 8;

blk = 0;
blkTime = 50;
blkTimeCounter = 0;
blkCooldown = 100;
blkCooldownCounter = 0;
blkspdreduction = 0.25;
blkCount = 4;

win = false;
lose = false;
loseframes = 6;
loseframecount = 0;
loseframestart = 15;
despawn = false;
despawntimer = 100;
despawncounter = 0;

walking = false;
walkingframes = 10
walkingframecount = 0;
walkingframestart = 0;

audio_play_sound(snd_Background_Music, 1, true);