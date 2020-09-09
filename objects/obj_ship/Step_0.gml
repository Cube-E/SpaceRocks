/// @description Insert description here
// You can write your code in this editor

if(keyboard_check(ord("a")) || keyboard_check(ord("A"))) 
{
	image_angle += 3;
}

if(keyboard_check(ord("d")) || keyboard_check(ord("D"))) 
{
	image_angle -= 3;
}

if(keyboard_check(ord("w")) || keyboard_check(ord("W"))) 
{
	if(speed < 3)
	{
		motion_add(image_angle, 0.05);
	}
	direction = image_angle;
	
}

if(keyboard_check(ord("s")) || keyboard_check(ord("S"))) 
{
	if(speed > 0) 
	{
		motion_add(image_angle, -0.03);
	}
}

if(keyboard_check_pressed(vk_space)) 
{
	var uid = instance_create_layer(x,y,"Instances",obj_bullet);
	uid.direction = image_angle;
	audio_play_sound(snd_zap,1,false);
	
}



move_wrap(true,true, sprite_width/2);

if(alarm[0] == -1){
	alarm[0] = 60;	
}





