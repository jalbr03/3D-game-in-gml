//cube
with(obj_game_world){
	vertex_point_add(square, -side_length, -side_length, 1, 0, 0, -1, c_white, 1.0, 0, 0)
	vertex_point_add(square, -side_length, side_length, 1, 0, 0, -1, c_white, 1.0, 0, 1)
	vertex_point_add(square, side_length, -side_length, 1, 0, 0, -1, c_white, 1.0, 1, 0)

	vertex_point_add(square, -side_length, side_length, 1, 0, 0, -1, c_white, 1.0, 0, 1)
	vertex_point_add(square, side_length, -side_length, 1, 0, 0, -1, c_white, 1.0, 1, 0)
	vertex_point_add(square, side_length, side_length, 1, 0, 0, -1, c_white, 1.0, 1, 1)


	vertex_point_add(square, -side_length, -side_length, 64, 0, 0, -1, c_white, 1.0, 0, 0)
	vertex_point_add(square, -side_length, side_length, 64, 0, 0, -1, c_white, 1.0, 0, 1)
	vertex_point_add(square, side_length, -side_length, 64, 0, 0, -1, c_white, 1.0, 1, 0)

	vertex_point_add(square, -side_length, side_length, 64, 0, 0, -1, c_white, 1.0, 0, 1)
	vertex_point_add(square, side_length, -side_length, 64, 0, 0, -1, c_white, 1.0, 1, 0)
	vertex_point_add(square, side_length, side_length, 64, 0, 0, -1, c_white, 1.0, 1, 1)
}