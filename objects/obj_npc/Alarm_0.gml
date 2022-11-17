/// @description Handling the idle animations of the sprite

frameindex++;
if (frameindex == framestart + framecount)
	frameindex = framestart;
image_index = frameindex;
alarm[0] = framespeed;