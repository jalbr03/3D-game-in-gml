range_x =			[x-size/2,x+size/2]
range_y	=			[y-size/2,y+size/2]
range_z	= [height-size/2,height+size/2]

show_debug_message(range_y[0]);
show_debug_message(range_y[1]);

//camera colisions
with(obj_camera){
//top colision    
	if(x > other.range_x[0] && x < other.range_x[1] && y > other.range_y[0] && y < other.range_y[1] && -z+headHight <= other.range_z[1]) grounded = true;
//bottom colision    
	if(x > other.range_x[0] && x < other.range_x[1] && y > other.range_y[0] && y < other.range_y[1] && -z >= other.range_z[0]) jump = false;
//left/right colision
	if(x > other.range_x[0] && x < other.range_x[1] && -z > other.range_z[0] && -z < other.range_z[1] && y > other.range_y[0] && y < other.range_y[1]){
		x -= dcos(direction)*4;
		y += dsin(direction)*4;
	}
//front/back colision
	if(y > other.range_x[0] && y < other.range_x[1] && -z > other.range_z[0] && -z < other.range_z[1] && x > other.range_y[0] && x < other.range_y[1]){
		x -= dcos(direction)*4;
		y += dsin(direction)*4;
	}
}