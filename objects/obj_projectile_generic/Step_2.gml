if (!global.paused){
	lifespan--;
	if (lifespan <= 0)
		instance_destroy(self);
}