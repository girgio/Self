
draw_set_font(Font2)
draw_set_halign(fa_center)
draw_set_valign(fa_center)

var gui_w = global.w_res 
var gui_h = global.h_res

_x = xstart*(global.w_res/camera_get_view_width(view_camera[0]))+(0.25*0.20*global.w_res)
_x_text = xstart*(global.w_res/camera_get_view_width(view_camera[0]))+(0.25*0.50*global.w_res) 
_w = 0.25*global.w_res*0.6
_h = 0.15*(global.h_res*(1/9))
_y = ystart*(global.h_res/camera_get_view_height(view_camera[0]))-_h*2 - 0.15*(global.h_res*(1/9))
_y_text = ystart*(global.h_res/camera_get_view_height(view_camera[0]))-_h*1.5- 0.15*(global.h_res*(1/9))
draw_sprite_stretched(spr_box,0,_x,_y,_w,_h)
draw_sprite_stretched_ext(spr_box,1,_x,_y,_w*(data.hp/data.hp_max),_h,c_green,1)

draw_text(_x_text,_y_text,string(data.hp)+"/"+string(data.hp_max))

_y += _h*1.5
_y_text = _y + _h/2
draw_sprite_stretched(spr_box,0,_x,_y,_w,_h)
draw_sprite_stretched_ext(spr_box,1,_x,_y,_w*(data.mp/data.mp_max),_h,c_blue,1)
draw_text(_x_text,_y_text,$"{data.mp}/{data.mp_max}")

draw_set_font(Font1)
_y_text -= _h*4
draw_text(_x_text,_y_text,$"{data.name} LV.{data.level}")

draw_set_valign(fa_left)
draw_set_halign(fa_top)

if(stat and !level_up){ 
    _w = gui_w/4
    _h = gui_h/3
    _x  = gui_w*x/room_width
    _y = gui_h*y/room_height
    draw_sprite_stretched_ext(spr_box_1,0,_x,_y,_w,_h,c_white,0.8)
    
    _x += 0.3*_w
    _y += 0.2*_h

    draw_text(_x,_y,"Attacco")
    draw_text(_x+0.3*_w,_y,data.atk)
    
    _y += 0.1*_h
    draw_text(_x,_y,"Magia")
    draw_text(_x+0.3*_w,_y,data.m_atk)
    
    _y += 0.1*_h
    draw_text(_x,_y,"Difesa")
    draw_text(_x+0.3*_w,_y,data.def)
    
    _y += 0.1*_h
    draw_text(_x,_y,"Velocità")
    draw_text(_x+0.3*_w,_y,data._speed)
    
    _y += 0.1*_h
    draw_text(_x,_y,"Fortuna")
    draw_text(_x+0.3*_w,_y,data.luck)
    
    draw_set_halign(fa_center)
    draw_set_valign(fa_center)
    
    _w = gui_w/4
    _h = gui_h/3
    _x  = gui_w*x/room_width
    _y = gui_h*y/room_height
    _y += 0.1*_h
    _x += 0.5*_w
    draw_text(_x,_y,"Statistiche")
    
}

if(level_up and (draw_state == false)){
    
    
    draw_set_valign(fa_left)
    draw_set_halign(fa_top)
    _w = gui_w/4
    _h = gui_h/3
    _x  = gui_w*x/room_width
    _y = gui_h*y/room_height
    draw_sprite_stretched_ext(spr_box_1,0,_x,_y,_w,_h,c_white,0.8)
    
    _x += 0.3*_w
    _y += 0.2*_h

    draw_text(_x,_y,"Attacco")
    draw_text(_x+0.3*_w,_y,current_atk)
    draw_text(_x+0.5*_w,_y,$"+{data.atk_up*data.levels_obtained}")
    
    _y += 0.1*_h
    draw_text(_x,_y,"Magia")
    draw_text(_x+0.3*_w,_y,curretn_matk)
    draw_text(_x+0.5*_w,_y,$"+{data.matk_up*data.levels_obtained}")
    
    _y += 0.1*_h
    draw_text(_x,_y,"Difesa")
    draw_text(_x+0.3*_w,_y,current_def)
    draw_text(_x+0.5*_w,_y,$"+{data.def_up*data.levels_obtained}")
    
    _y += 0.1*_h
    draw_text(_x,_y,"Velocità")
    draw_text(_x+0.3*_w,_y,current_speed)
    draw_text(_x+0.5*_w,_y,$"+{data._speed_up*data.levels_obtained}")
    
    _y += 0.1*_h
    draw_text(_x,_y,"Fortuna")
    draw_text(_x+0.3*_w,_y,current_luck)
    draw_text(_x+0.5*_w,_y,$"+{data.luck_up*data.levels_obtained}")
    
    draw_set_halign(fa_center)
    draw_set_valign(fa_center)
    
    _w = gui_w/4
    _h = gui_h/3
    _x  = gui_w*x/room_width
    _y = gui_h*y/room_height
    _y += 0.1*_h
    _x += 0.5*_w
    draw_text(_x,_y,"Statistiche+")
    
    if(keyboard_check_pressed(ord("Z"))){
        draw_state = "finish"
    }
    
}else if(draw_state == "finish"){
    _w = gui_w/4
    _h = gui_h/3
    _x  = gui_w*x/room_width
    _y = gui_h*y/room_height
    draw_sprite_stretched_ext(spr_box_1,0,_x,_y,_w,_h,c_white,0.8)
    
    _x += 0.3*_w
    _y += 0.2*_h

    draw_text(_x,_y,"Attacco")
    draw_text(_x+0.3*_w,_y,data.atk)
    
    _y += 0.1*_h
    draw_text(_x,_y,"Magia")
    draw_text(_x+0.3*_w,_y,data.m_atk)
    
    _y += 0.1*_h
    draw_text(_x,_y,"Difesa")
    draw_text(_x+0.3*_w,_y,data.def)
    
    _y += 0.1*_h
    draw_text(_x,_y,"Velocità")
    draw_text(_x+0.3*_w,_y,data._speed)
    
    _y += 0.1*_h
    draw_text(_x,_y,"Fortuna")
    draw_text(_x+0.3*_w,_y,data.luck)
    
    draw_set_halign(fa_center)
    draw_set_valign(fa_center)
    
    _w = gui_w/4
    _h = gui_h/3
    _x  = gui_w*x/room_width
    _y = gui_h*y/room_height
    _y += 0.1*_h
    _x += 0.5*_w
    draw_text(_x,_y,"Statistiche+")
    if(keyboard_check_pressed(ord("Z"))){
        draw_state = false
        level_up = false
        obj_battle_level_manager.level_up_finish = true
        data.levels_obtained = 0
    }
}

draw_set_valign(fa_left)
draw_set_halign(fa_top)
