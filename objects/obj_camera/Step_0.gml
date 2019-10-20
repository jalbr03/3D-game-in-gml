//*
jump = keyboard_check(vk_space);
left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));
up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));
crouch = keyboard_check_pressed(vk_shift);
notcrouch = keyboard_check_released(vk_shift);
run = keyboard_check(vk_control);

project_matrix = matrix_build_projection_perspective_fov(fov,view_get_wport(0)/view_get_hport(0), 1, 32000);
camera_set_proj_mat(camera, project_matrix);
view_set_camera(0,camera);
camera_set_update_script(camera, camera_update);

direction -= (display_mouse_get_x()-display_get_width()/2)/10;
pitch = clamp(pitch-(display_mouse_get_y()-display_get_height()/2)/10, -80, 80);

if(display_mouse_get_x() < display_get_width()) display_mouse_set(display_get_width()/2, display_get_height()/2);

window_set_cursor(cr_none);

if(keyboard_check(vk_escape)){
	game_end();
}

if(left){
	x -= dsin(direction)*4;
	y -= dcos(direction)*4;
}
if(right){
	x += dsin(direction)*4;
	y += dcos(direction)*4;
}
if(up){
	x += dcos(direction)*walkspd;
	y -= dsin(direction)*walkspd;
}
if(down){
	x -= dcos(direction)*4;
	y += dsin(direction)*4;
}

if(crouch) z = headHight/2;
if(notcrouch) z = headHight;
if(run){
	walkspd = 8;
	if(fov <= 90) fov += 3;
}else{
	walkspd = 4;
	if(fov >= 60) fov -= 5;
}

if(z >= headHight) grounded = true;
if(grounded == true){
	vsp = 0;
	if(jump){
		grounded = false;
		vsp = -jumpHight;
	}
}
if(grounded == false) vsp += grav;
z += vsp;
grounded = false;

//collision are in the obj_game_world








