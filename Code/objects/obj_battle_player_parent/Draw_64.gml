
draw_set_font(Font2)
draw_set_halign(fa_center)
draw_set_valign(fa_center)

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
