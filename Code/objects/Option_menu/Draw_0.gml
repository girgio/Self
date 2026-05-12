draw_self()
draw_set_font(Font1)
draw_set_halign(fa_center)
draw_set_valign(fa_center)

var _x_text = x+sprite_width/2
var _y_text = y + 18

draw_text(_x_text,_y_text,"Options")

if (instance_exists(slider_music)) {
    draw_rectangle(lim_x1, slider_music.y - 1, lim_x2, slider_music.y + 1, false)
}

draw_set_font(Font2)
draw_set_halign(fa_top)
draw_text(lim_x2 + 10,slider_music.y,"Music")

if(instance_exists(slider_se)){
     draw_rectangle(lim_x1, slider_se.y - 1, lim_x2, slider_se.y + 1, false)
}

draw_text(lim_x2 + 10,slider_se.y,"SFX")


draw_set_valign(fa_left)
draw_set_halign(fa_top)