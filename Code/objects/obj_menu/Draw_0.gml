draw_self()

if (obj_menu_manager.option_open) {
    draw_rectangle(lim_x1, slider_music_1.y+1, lim_x2, slider_music_1.y-1, false)
}

draw_set_font(History_font)
draw_set_halign(fa_top)


if(obj_menu_manager.option_open){
     draw_rectangle(lim_x1, slider_se_1.y+1, lim_x2, slider_se_1.y-1, false)
}

with(Checkbox_1){
    if(!visible) exit
    draw_self()
    if(global.fullscreen){
    draw_sprite_stretched(spr_spunta,0,x - 1,y - 2,sprite_width + 2,sprite_height + 2)
}
}

draw_set_valign(fa_left)
draw_set_halign(fa_top)