/// @description Insert description here
// You can write your code in this editor
//If player exists
event_inherited();
if(!instance_exists(obj_ship)) exit;

//If player is inside range
if(point_distance(x,y, obj_ship.x, obj_ship.y) < 250){
	//Turn to look at player ship
	originalSpeed = speed;
	var new_angle = point_direction(x,y, obj_ship.x, obj_ship.y);
	new_angle = image_angle - angle_difference(image_angle, new_angle);
	image_angle = lerp(image_angle, new_angle, 0.1);
	direction = image_angle;
	
	if(point_distance(x,y,obj_ship.x, obj_ship.y) < 150){
		speed -=0.05;	
	}else{
		speed += 0.01;	
	}
	 
	//fire bullet
	bulletCounter++;
	if(bulletCounter >= 60){
		create_bullet(image_angle,8,faction);
		bulletCounter = 0;
	}
	
} else{
	//otherwise, no change	
	speed = lerp(speed, originalSpeed, 0.1);
}