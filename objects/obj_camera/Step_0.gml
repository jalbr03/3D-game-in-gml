//*
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
	case vk_space:
		if(z > headHight-jumpHight) z -= jumpspd;
		show_debug_message("z");
		show_debug_message(z);
		show_debug_message("jump");
		show_debug_message(headHight+headHight);
		break;
}
if(!keyboard_check(vk_space)){
	if(z < headHight) z += 2;
}