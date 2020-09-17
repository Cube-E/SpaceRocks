/// @description Insert description here
// You can write your code in this editor




lives -= 1;

audio_play_sound(snd_die,1,false);

var _xx = x;
var _yy = y;
var _ib = image_blend;
with(obj_particles){
	part_particles_create_colour(partSys, _xx,_yy, partTypeShipDebris,_ib, 10);	
}

if(lives > 0)
{
	instance_create_layer(room_width/2,room_height/2,"Instances", obj_ship);	
}

	
