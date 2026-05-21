draw_self()

if (obj_menu_manager.option_open) {
    draw_rectangle(lim_x1, slider_music_1.y+1, lim_x2, slider_music_1.y-1, false)
}

draw_set_font(History_font)
draw_set_halign(fa_top)


if(obj_menu_manager.option_open){
     draw_rectangle(lim_x1, slider_se_1.y+1, lim_x2, slider_se_1.y-1, false)
}



draw_set_valign(fa_left)
draw_set_halign(fa_top)