_dx = 16
_dy = 16
_dw = 256
_dh = 32

draw_set_font(Font1)
draw_set_valign(fa_center)
draw_set_halign(fa_center)

draw_sprite_stretched(spr_box,0,_dx,_dy,_dw,_dh)
draw_sprite_stretched_ext(spr_box,1,_dx,_dy,_dw*(xp/xp_required),_dh,c_blue,0.8)

_dx += _dw/2
_dy += _dh/2

draw_text(_dx,_dy,$"Level {level}")


draw_set_valign(fa_left)
draw_set_halign(fa_top)