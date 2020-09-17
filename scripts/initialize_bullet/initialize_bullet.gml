//@description create_bullet
//@arg direction
//@arg speed
//@arg faction
//@arg bullet_instance
function initialize_bullet(_direction, _speed, _faction, _bullet_id){
			
	var _creator = id;
	with(_bullet_id){
		direction = _direction;
		if(object_index == obj_bullet){
			speed = _speed;
		}
		faction = _faction;
		creator = _creator;
	}
	
	if(faction == factions.ally) image_blend = c_green;
	else if(faction == factions.enemy) image_blend = c_red;
}