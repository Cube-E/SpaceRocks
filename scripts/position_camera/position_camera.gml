//@desctiption Position camera
//@arg target object
function position_camera(_target){
	
	if(instance_exists(_target)){
		global.cameraX = _target.x - global.cameraWidth/2;
		global.cameraY = _target.y - global.cameraHeight/2;
	
		global.cameraX = clamp(global.cameraX, 0 , room_width - global.cameraWidth);
		global.cameraY = clamp(global.cameraY, 0 , room_height - global.cameraHeight);
	}


	camera_set_view_pos(view_camera[0], global.cameraX, global.cameraY);
}