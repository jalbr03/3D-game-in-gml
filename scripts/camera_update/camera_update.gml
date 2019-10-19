var matrix = matrix_build_lookat(obj_camera.x,obj_camera.y, obj_camera.z,
	obj_camera.x+dcos(obj_camera.direction), obj_camera.y-dsin(obj_camera.direction), obj_camera.z-dsin(obj_camera.pitch),
	0, 0, 1);
	
camera_set_view_mat(view_camera[0], matrix);