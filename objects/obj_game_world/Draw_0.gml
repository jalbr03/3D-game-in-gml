//top bottom
var matrix = matrix_build(x, y, -height, 0, 0, roatation, size/64/2, size/64/2, size/64/2);
matrix_set(matrix_world, matrix);
vertex_submit(square, pr_trianglelist, sprite_get_texture(spr_decor, 0));
matrix_set(matrix_world, matrix_build_identity());

//left right
var matrix = matrix_build(x, y, -height, 0, 90, roatation, size/64/2, size/64/2, size/64/2);
matrix_set(matrix_world, matrix);
vertex_submit(square, pr_trianglelist, sprite_get_texture(spr_decor, 0));
matrix_set(matrix_world, matrix_build_identity());

//front back
var matrix = matrix_build(x, y, -height, 90, 0, roatation, size/64/2, size/64/2, size/64/2);
matrix_set(matrix_world, matrix);
vertex_submit(square, pr_trianglelist, sprite_get_texture(spr_decor, 0));
matrix_set(matrix_world, matrix_build_identity());