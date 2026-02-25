if(obj_battle_manager._turn == -1){
    draw_set_font(Font3)

    _x = display_get_width()*_x_perc
    _y = display_get_height()*_y_perc

    draw_text(_x,_y,_text)
}