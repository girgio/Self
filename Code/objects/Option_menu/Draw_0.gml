draw_self()
draw_set_font(Font2)
draw_set_halign(fa_center)
draw_set_valign(fa_center)

var _x_text = x+sprite_width/2
var _y_text = y + 18



if (instance_exists(slider_music)) {
    draw_rectangle(lim_x1, slider_music.y+1, lim_x2, slider_music.y, false)
}

draw_set_font(History_font)
draw_set_halign(fa_top)


if(instance_exists(slider_se)){
     draw_rectangle(lim_x1, slider_se.y+1, lim_x2, slider_se.y, false)
}



draw_set_valign(fa_left)
draw_set_halign(fa_top)