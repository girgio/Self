
var gui_w = global.w_res
var gui_h = global.h_res


var _w = gui_w* 3/4
var _h = gui_h*5/9
var _x = x*(gui_w/camera_get_view_width(view_camera[0]))
var _y = y*(gui_h/camera_get_view_height(view_camera[0]))
draw_sprite_stretched(Sprite44,0,_x,_y,_w,_h)

var _gui_mouse_x = mouse_x * (global.w_res / camera_get_view_width(view_camera[0])) - (1/4*global.w_res);
var _gui_mouse_y = mouse_y * (global.h_res / camera_get_view_height(view_camera[0]));

var _local_mouse_x = _gui_mouse_x - _x;
var _local_mouse_y = _gui_mouse_y - _y;

// 1. Controlla se la superficie esiste, altrimenti creala
if (!surface_exists(drawing_surface)) {
    drawing_surface = surface_create(_w, _h);
    surface_set_target(drawing_surface);
    draw_clear_alpha(c_black, 0); // Pulisce la superficie (trasparente)
    surface_reset_target();
}

// 2. Disegna sulla superficie se il tasto è premuto
if (draw_red and first) {
    
    surface_set_target(drawing_surface);
    
    draw_line_width_color(_gui_mouse_x, _gui_mouse_y, mouse_x_prev, mouse_y_prev, 29, c_red, c_red);
    
    if(_gui_mouse_x != mouse_x_prev or mouse_y_prev != _gui_mouse_y ){
        current_instance = instance_create_depth(mouse_x,mouse_y,-100,obj_battle_red_check)
        num_instance++  
    }
    
    _time++
    draw_sprite(spr_draw_red, 0, _gui_mouse_x, _gui_mouse_y);
    surface_reset_target();
}

draw_surface(drawing_surface, _x, _y);

mouse_x_prev = _gui_mouse_x;
mouse_y_prev = _gui_mouse_y;
