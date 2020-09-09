/// @description Insert description here
// You can write your code in this editor

instance_destroy();
score += 1;
audio_play_sound(snd_die,1,false);

with(other)
{
	hitCount -= 1;
	
	if(hitCount <= 0){
		instance_destroy();
	
		if(sprite_index == spr_asteroid_large)
		{
			repeat(2)
			{
				var uid = instance_create_layer(x, y, "Instances", obj_asteroid);
				uid.sprite_index = spr_asteroid_med;
			}
		} 
		else if(sprite_index == spr_asteroid_med)
		{
			repeat(2)
			{
				var uid = instance_create_layer(x, y, "Instances", obj_asteroid);
				uid.sprite_index = spr_asteroid_small;
			}
		}
	}
	
	repeat(10)
	{
		instance_create_layer(x,y, "Instances", obj_debris);
	}

	
	
}