range_x =			[x-size/2,x+size/2]
range_y	=			[y-size/2,y+size/2]
range_z	= [height-size/2,height+size/2]


//camera collision 
with(obj_camera){
//top collision     
	if(x > other.range_x[0] && x < other.range_x[1] && y > other.range_y[0] && y < other.range_y[1] && -z+headHight-5 <= other.range_z[1]) grounded = true;
//bottom collision     
	if(x > other.range_x[0] && x < other.range_x[1] && y > other.range_y[0] && y < other.range_y[1] && -z >= other.range_z[0]) jump = false;
//side collision 
	if(-z > other.range_z[0] && -z+headHight < other.range_z[1]){
		if(x > other.range_x[0] && x < other.range_x[1] && y > other.range_y[0] && y < other.range_y[1]){
				x -= dcos(direction)*4;
				y += dsin(direction)*4;
			}

		if(y > other.range_x[0] && y < other.range_x[1] && -z > other.range_z[0] && -z < other.range_z[1] && x > other.range_y[0] && x < other.range_y[1]){
			x -= dcos(direction)*4;
			y += dsin(direction)*4;
		}
	}
}