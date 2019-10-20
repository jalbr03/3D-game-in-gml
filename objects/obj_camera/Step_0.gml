//*
jump = keyboard_check(vk_space);

direction -= (display_mouse_get_x()-display_get_width()/2)/10;
pitch = clamp(pitch-(display_mouse_get_y()-display_get_height()/2)/10, -80, 80);

display_mouse_set(display_get_width()/2, display_get_height()/2);

window_set_cursor(cr_none);

if(keyboard_check(vk_escape)){
	game_end();
}

//controls
switch(keyboard_key){
	case vk_left:
	case ord("A"):
		x -= dsin(direction)*4;
		y -= dcos(direction)*4;
		break;
	case vk_right:
	case ord("D"):
		x += dsin(direction)*4;
		y += dcos(direction)*4;
		break;
	case vk_up:
	case ord("W"):
		x += dcos(direction)*4;
		y -= dsin(direction)*4;
		break;
	case vk_down:
	case ord("S"):
		x -= dcos(direction)*4;
		y += dsin(direction)*4;
		break;
}
/*
if(grounded == true){
	if(keyboard_check(vk_space)){
		jump = true;
		grounded = false;
	}
}

if(z < headHight-jumpHight) jump = false;
if(z >= headHight) grounded = true;

if(jump == true) z -= jumpspd;
if(jump == false && grounded == false) z += 1;
*/

if(z >= headHight) grounded = true;
if(grounded == true){
	vsp = 0;
	if(jump){
		grounded = false;
		vsp = -jumpHight;
	}
}
if(grounded == false) vsp += grav;
z += vsp
grounded = false;

//collision 
//are in the obj_game_world








