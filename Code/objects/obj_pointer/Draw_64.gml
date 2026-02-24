draw_set_font(Font3)
if(_selezione == "azione"){
    _x = display_get_width()*_x_perc
    _w = display_get_width()*0.04
    _h = display_get_height()*0.04
    _y = display_get_height()*_y_perc+string_height("a")/2-_h/2
    draw_sprite_stretched(spr_button_run,0,_x,_y,_w,_h)
    
}else if(_selezione == "target"){
    var yy = display_get_height() * 0.05;

    var scale = display_get_width() / camera_get_view_width(view_camera[0]);
    var xx = (_x_target) * scale - _w/2;

    draw_sprite_stretched(spr_button_run, 0, xx, yy, _w, _h);
}
