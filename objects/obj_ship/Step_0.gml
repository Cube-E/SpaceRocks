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
	
	//Particel FX
	exhaustCounter++;
	
	if(exhaustCounter >=4){
		var len = sprite_height*0.4;
		var _xx = x - lengthdir_x(len,image_angle);
		var _yy = y-  lengthdir_y(len,image_angle);
		with(obj_particles){
			part_particles_create(partSys, _xx,_yy, partTypeExhaust, 1);	
		}
		exhaustCounter = 0;
	}
	
}

if(keyboard_check(ord("s")) || keyboard_check(ord("S"))) 
{
	if(speed > 0) 
	{
		motion_add(image_angle, -0.03);
	}
}

if(keyboard_check_pressed(vk_enter)) 
{
	create_bullet(image_angle, bullet_speed, faction, guns);
}



move_wrap(true,true, sprite_width/2);

if(alarm[0] == -1){
	alarm[0] = 60;	
}





