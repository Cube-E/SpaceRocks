
//@description spawn_off_camera
//@arg obj
//@arg number


function spawn_off_camera(_object, _number){
	//var obj = _object;
	//var num = _number;
	var xx = irandom_range(0,room_width);
	var yy = irandom_range(0,room_height);
	
	var pad = 0;
	
	var left = global.cameraX - pad;
	var top = global.cameraY - pad;
	var right = global.cameraX + global.cameraWidth + pad;
	var bottom	= global.cameraY + global.cameraHeight + pad;
	
	repeat(_number){

		while(point_in_rectangle(xx, yy, left, top, right, bottom)){
			xx = irandom_range(0,room_width);
			yy = irandom_range(0,room_height);
		}
	
		instance_create_layer(x,y,"Instances", _object);
		
		xx = irandom_range(0,room_width);
		yy = irandom_range(0,room_height);
	}
	
}