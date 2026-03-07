draw_set_font(Font3)
if(_selezione == "azione"){
    _x = global.w_res*_x_perc
    _w = global.w_res*0.04
    _h = global.h_res*0.04
    _y = global.h_res*_y_perc+string_height("a")/2-_h/2
    draw_sprite_stretched(spr_button_run,0,_x,_y,_w,_h)
}else if(_selezione == "target" or _selezione_magia){
    var yy = global.h_res * 0.05;

    var scale = global.w_res / camera_get_view_width(view_camera[0]);
    var xx = (_x_target) * scale - _w/2;

    draw_sprite_stretched(spr_button_run, 0, xx, yy, _w, _h);
    
    if(_selezione_magia){
        var _x_box = 0
        var _y_box = 0
        var _h_box = 5/9*global.h_res
        var _w_box = 1/4*global.w_res
        var _y_perc_text = 0.03
        
        draw_sprite_stretched(spr_box,0,_x_box,_y_box,_w_box,_h_box)
        
        for(i = 0;i < array_length(_manager.players[_manager._turn].magics);i++){
            draw_set_font(Magic_font)
            var _y_text = global.h_res*_y_perc_text+0.1*i
            var _x_text = obj_battle_light._x_perc*global.w_res
            draw_text(_x_text,_y_text,_manager.players[_manager._turn].magics[i].name)
            draw_text_colour(_x_text + 0.3*_w_box,_y_text,$"{_manager.players[_manager._turn].magics[i].costo} mp",c_blue,c_aqua,c_blue,c_aqua,1)
            draw_set_font(Font3)
        }
    }
}else if(_selezione == "magic" ){
    var _x_box = 0
    var _y_box = 0
    var _h_box = 5/9*global.h_res
    var _w_box = 1/4*global.w_res
    var _y_perc_text = 0.03
    
    draw_sprite_stretched(spr_box,0,_x_box,_y_box,_w_box,_h_box)
    
    for(i = 0;i < array_length(_manager.players[_manager._turn].magics);i++){
        draw_set_font(Magic_font)
        var _y_text = global.h_res*_y_perc_text+0.1*i
        var _x_text = obj_battle_light._x_perc*global.w_res
        draw_text(_x_text,_y_text,_manager.players[_manager._turn].magics[i].name)
        draw_text_colour(_x_text + 0.3*_w_box,_y_text,$"{_manager.players[_manager._turn].magics[i].costo} mp",c_blue,c_aqua,c_blue,c_aqua,1)
        draw_set_font(Font3)
    }
    
    _x = global.w_res*_x_perc
    _w = global.w_res*0.04
    _h = global.h_res*0.04
   
     draw_set_font(Magic_font)
    _y = global.h_res*_y_perc+string_height("a")/2-_h/2
    draw_set_font(Font3)
    
    draw_sprite_stretched(spr_button_run,0,_x,_y,_w,_h)
    
}
