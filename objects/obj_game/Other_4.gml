/// @description Insert description here
// You can write your code in this editor

if(room == rm_game){
	
	if(!audio_is_playing(msc_song)){
		audio_play_sound(msc_song,2, true);;	
	}
	
	spawn_off_camera(obj_asteroid, 6);
}

alarm[0] = 60;
