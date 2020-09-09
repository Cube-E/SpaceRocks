/// @description Insert description here
// You can write your code in this editor



if(invincible == 0){

	invincible = 1;

	instance_destroy();
	lives -= 1;

	audio_play_sound(snd_die,1,false);

	repeat(10)
	{
		instance_create_layer(x,y,"Instances", obj_debris);
	}
	if(lives > 0)
	{
	 instance_create_layer(room_width/2,room_height/2,"Instances", obj_ship);	
	}

	
}