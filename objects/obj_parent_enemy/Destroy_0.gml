/// @description Insert description here
// You can write your code in this editor

audio_play_sound(snd_die,1,false);
var _xx = x;
var _yy = y;
var _ib = image_blend;
with(obj_particles){
	part_particles_create_colour(partSys, _xx,_yy, partTypeShipDebris,_ib, 10);	
}


global.cameraShake = 4;
switch(object_index){

	case obj_raider: score += 14; break;
	case obj_hunter: score += 30; break;
	case obj_brute: score += 50; break;
}

if(irandom_range(0,1) == 0){
	instance_create_layer(x,y, "Instances", obj_powerup);	
}