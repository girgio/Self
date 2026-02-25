
draw_set_font(Font2)
draw_set_halign(fa_center)
draw_set_valign(fa_center)


_w = 0.25*global.w_risoluzione*0.6
_x = xstart*(global.w_risoluzione/camera_get_view_width(view_camera[0]))+(0.5*self.sprite_width)-(0.5*_w)
_x_text = _x + _w/2
_h = 0.15*(global.h_risoluzione*(1/9))
_y = ystart*(global.h_risoluzione/camera_get_view_height(view_camera[0]))-_h*5.8
_y_text = ystart*(global.h_risoluzione/camera_get_view_height(view_camera[0]))-_h*5.3
draw_sprite_stretched(spr_box,0,_x,_y,_w,_h)
draw_sprite_stretched_ext(spr_box,1,_x,_y,_w*(data.hp/data.hp_max),_h,c_red ,1)

draw_text(_x_text,_y_text,string(data.hp)+"/"+string(data.hp_max))

draw_set_font(Font1)
_y_text -= _h*2
draw_text(_x_text,_y_text,$"{data.name}")

draw_set_valign(fa_left)
draw_set_halign(fa_top)


