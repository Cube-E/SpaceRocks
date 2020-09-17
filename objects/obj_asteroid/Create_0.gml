/// @description Insert description here
// You can write your code in this editor
event_inherited();

hitCount = 0;
sprite_index = choose(
	spr_asteroid_small,
	spr_asteroid_med,
	spr_asteroid_large
);
//image_angle = irandom_range(0,359);
//motion_add(image_angle, 1);
direction = irandom_range(0,359);
image_angle = irandom_range(0,359);
speed = 1;

if(sprite_index == spr_asteroid_large)
{
	hitCount = 3;	
}
else if (sprite_index == spr_asteroid_med){
	hitCount = 2;	
}
else
{
	hitCount = 1;	
}

