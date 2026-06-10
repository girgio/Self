var gui_w = global.w_res
var gui_h = global.h_res

var _x = x*(gui_w/camera_get_view_width(view_camera[0]))
var _y = y*(gui_h/camera_get_view_height(view_camera[0]))
var _w = sprite_width*(gui_w/camera_get_view_width(view_camera[0]))
var _h = sprite_height*(gui_h/camera_get_view_height(view_camera[0]))

draw_sprite_stretched(sprite_index,0,_x,_y,_w,_h)