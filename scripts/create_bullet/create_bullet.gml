//@description create_bullet
//@arg direction
//@arg speed
//@arg faction
//@arg gun_type

function create_bullet(_direction, _speed, _faction, _gun_type){
	if(argument_count > 3){
		_gun_type = argument[3];	
	}else{
		_gun_type = -1;	
	}
	
	switch(_gun_type){
		case powerups.three_bullets:
		
			var uid = instance_create_layer(x,y,"Instances",obj_bullet);
			initialize_bullet(_direction, _speed, _faction, uid);
			
		case powerups.two_bullets:
			audio_play_sound(snd_zap,1,false);
			
			var _seperation = 12;
			
			var x_right = x + lengthdir_x(_seperation, _direction + 90);
			var x_left = x + lengthdir_x(_seperation, _direction - 90);
			
			var y_right = y + lengthdir_y(_seperation, _direction + 90);
			var y_left = y + lengthdir_y(_seperation, _direction - 90);
			
			var uid = instance_create_layer(x_right,y_right,"Instances",obj_bullet);
			initialize_bullet(_direction, _speed, _faction, uid);
			
			var uid = instance_create_layer(x_left,y_left,"Instances",obj_bullet);
			initialize_bullet(_direction, _speed, _faction, uid);
			
			break;
			
		case powerups.four_bullets:
			audio_play_sound(snd_zap,1,false);
			
			var _seperation = 7;
			
			var i = 0; repeat(4){
				var bullet_angle = _direction + (i * 90);
				
				var x_right = x + lengthdir_x(_seperation, bullet_angle );
				var y_right = y + lengthdir_y(_seperation, bullet_angle);	
				var uid = instance_create_layer(x_right,y_right,"Instances",obj_bullet);
				initialize_bullet(bullet_angle, _speed, _faction, uid);
				i++;
			}
			break;
			
		case powerups.star_bullets:

			audio_play_sound(snd_zap,1,false);
			
			var _seperation = 7;
			
			var i = 0; repeat(8){
				var bullet_angle = _direction + (i * 45);
				
				var x_right = x + lengthdir_x(_seperation, bullet_angle );
				var y_right = y + lengthdir_y(_seperation, bullet_angle);
				var uid = instance_create_layer(x_right,y_right,"Instances",obj_bullet);
				initialize_bullet(bullet_angle, _speed, _faction, uid);
				i++;
			}
			break;
			
		case powerups.laser_bullets:
			audio_play_sound(snd_laser,1,false);
			var uid = instance_create_layer(x,y,"Instances",obj_laser);
			initialize_bullet(_direction, _speed, _faction, uid);
			break;
			
		default:
			audio_play_sound(snd_zap,1,false);
			var uid = instance_create_layer(x,y,"Instances",obj_bullet);
			initialize_bullet(_direction, _speed, _faction, uid);
			break;
		
	}






}