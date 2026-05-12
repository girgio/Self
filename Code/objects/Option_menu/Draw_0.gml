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