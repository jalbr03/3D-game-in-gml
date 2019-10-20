range_x =			[x-size/2,x+size/2]
range_y	=			[y-size/2,y+size/2]
range_z	= [height-size/2,height+size/2]


//camera collision 
with(obj_camera){
//top collision     
	if(x > other.range_x[0] && x < other.range_x[1] && y > other.range_y[0] && y < other.range_y[1] && -z+headHight-5 <= other.range_z[1] && -z+headHight-5 >= other.range_z[0]) grounded = true;
//bottom collision     
	if(x > other.range_x[0] && x < other.range_x[1] && y > other.range_y[0] && y < other.range_y[1] && -z+5 >= other.range_z[0] && -z <= other.range_z[1]) vsp = 0;
//side collision 
	if(-z > other.range_z[0] && -z+headHight < other.range_z[1]){
		if(x+5 > other.range_x[0] && x-5 < other.range_x[1] && y+5 > other.range_y[0] && y-5 < other.range_y[1]){
			x -= dcos(direction)*walkspd;
			y += dsin(direction)*walkspd;
		}

		if(y+5 > other.range_x[0] && y-5 < other.range_x[1] && x+5 > other.range_y[0] && x-5 < other.range_y[1]){
			x -= dcos(direction)*walkspd;
			y += dsin(direction)*walkspd;
		}
	}
}