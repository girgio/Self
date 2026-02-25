draw_set_font(Font3)
if(_selezione == "azione"){
    _x = global.w_risoluzione*_x_perc
    _w = global.w_risoluzione*0.04
    _h = global.h_risoluzione*0.04
    _y = global.h_risoluzione*_y_perc+string_height("a")/2-_h/2
    draw_sprite_stretched(spr_button_run,0,_x,_y,_w,_h)
    
}else if(_selezione == "target"){
    var yy = global.h_risoluzione * 0.05;

    var scale = global.w_risoluzione / camera_get_view_width(view_camera[0]);
    var xx = (_x_target) * scale - _w/2;

    draw_sprite_stretched(spr_button_run, 0, xx, yy, _w, _h);
}
