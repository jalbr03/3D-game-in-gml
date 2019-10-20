//set up
gpu_set_ztestenable(true);
gpu_set_zwriteenable(true);

//camera
camera = camera_create();
project_matrix = matrix_build_projection_perspective_fov(45,view_get_wport(0)/view_get_hport(0), 1, 32000);
camera_set_proj_mat(camera, project_matrix);
view_set_camera(0,camera);
camera_set_update_script(camera, camera_update);
window_set_fullscreen(true);

pitch = 0;
fov = 45;
direction = 0;
headHight = -128+1
jumpHight = 6;
z = headHight;

grounded = false;
jump = false;
grav = 0.2;
vsp = 0;
walkspd = 4;
originalwalk = walkspd
runingspd = walkspd*2;

MAXfov = 90;
minfov = 60;