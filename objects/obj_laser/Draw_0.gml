/// @description Insert description here
// You can write your code in this editor
var len = 500;

draw_line_width_color(x,y, 
	x + lengthdir_x(len, direction),
	y + lengthdir_y(len, direction),
	2, image_blend,image_blend
);

//Draw collision
var inst = collision_line(x,y,
	x + lengthdir_x(len, direction),
	y + lengthdir_y(len, direction),
	obj_faction, false, false
);

if(inst != noone){
	if(inst.faction != faction){
		with(inst){
			if(!immuneToLaser){
				event_perform(ev_other, ev_user1);	
			}
		}
	}	
}