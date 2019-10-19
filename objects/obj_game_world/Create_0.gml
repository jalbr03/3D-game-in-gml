vertex_format_begin();

vertex_format_add_position_3d();
vertex_format_add_normal();
vertex_format_add_color();
vertex_format_add_textcoord();

format = vertex_format_end();

//model
square = vertex_create_buffer();
vertex_begin(square, format);

//cube
//top
vertex_point_add(square, -size, -size, -size, 0, 0, -1, c_white, 1.0, 0, 0)
vertex_point_add(square, -size, size, -size, 0, 0, -1, c_white, 1.0, 0, 1)
vertex_point_add(square, size, -size, -size, 0, 0, -1, c_white, 1.0, 1, 0)

vertex_point_add(square, -size, size, -size, 0, 0, -1, c_white, 1.0, 0, 1)
vertex_point_add(square, size, -size, -size, 0, 0, -1, c_white, 1.0, 1, 0)
vertex_point_add(square, size, size, -size, 0, 0, -1, c_white, 1.0, 1, 1)

//bottom
vertex_point_add(square, -size, -size, size, 0, 0, -1, c_white, 1.0, 0, 0)
vertex_point_add(square, -size, size, size, 0, 0, -1, c_white, 1.0, 0, 1)
vertex_point_add(square, size, -size, size, 0, 0, -1, c_white, 1.0, 1, 0)

vertex_point_add(square, -size, size, size, 0, 0, -1, c_white, 1.0, 0, 1)
vertex_point_add(square, size, -size, size, 0, 0, -1, c_white, 1.0, 1, 0)
vertex_point_add(square, size, size, size, 0, 0, -1, c_white, 1.0, 1, 1)


vertex_end(square);
/*
vertex_position_3d(square, -side_length, -side_length, 1);
vertex_normal(square, 0, 0, -1);
vertex_color(square, c_white, 1.0);
vertex_texcoord(square, 0, 0);