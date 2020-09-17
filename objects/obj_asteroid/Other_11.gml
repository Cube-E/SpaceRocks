/// @description Take Damage



score += 10;

audio_play_sound(snd_die,1,false);


hitCount -= 1;

if(hitCount <= 0){
	instance_destroy();	
}


	
	

