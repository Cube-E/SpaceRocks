/// @description Insert description here
// You can write your code in this editor

if(irandom_range(0,5) == 0){
	instance_create_layer(x,y, "Instances", obj_powerup);	
}

var _xx = x;
var _yy = y;

if(sprite_index == spr_asteroid_large)
{
	global.cameraShake = 4;
	with(obj_particles){
		part_particles_create(partSys, _xx,_yy, partTypeAsteroidDebris, 12);	
	}
	
	repeat(2)
	{
		var uid = instance_create_layer(x, y, "Instances", obj_asteroid);
		uid.sprite_index = spr_asteroid_med;
	}
} 
else if(sprite_index == spr_asteroid_med)
{
	global.cameraShake = 2;
	with(obj_particles){
		part_particles_create(partSys, _xx,_yy, partTypeAsteroidDebris, 6);	
	}
	repeat(2)
	{
		var uid = instance_create_layer(x, y, "Instances", obj_asteroid);
		uid.sprite_index = spr_asteroid_small;
	}
}
else{
	global.cameraShake = 1;	
	with(obj_particles){
		part_particles_create(partSys, _xx,_yy, partTypeAsteroidDebris, 4);	
	}
}
