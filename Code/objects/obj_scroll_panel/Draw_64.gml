draw_set_font(Font2)
draw_set_halign(fa_center)
draw_set_valign(fa_center)
scale_x = 1
scale_y = 1
draw_sprite_stretched(sprite_index,0,view_x_sprite,global.h_res*(y)/room_height,global.w_res*sprite_width/room_width,global.h_res*sprite_height/room_height)
draw_sprite_stretched(spr_box,0,view_x, view_y, view_w, view_h);
draw_text(view_x + 0.5*view_w,view_y + 30,"Storico mosse")

if(obj_battle_switch.fullscreen){
    scale_x = display_get_width() / global.w_res;
    scale_y = display_get_height() / global.h_res;
    gpu_set_scissor(view_x*scale_x, (view_y + 120)*scale_y, (view_x + view_w)*scale_x, (view_h -120)*scale_y);//fixare incoERENZA
    
}else{
    gpu_set_scissor(view_x*scale_x, (view_y + 60)*scale_y, (view_x + view_w)*scale_x, (view_h -60)*scale_y);
}


draw_set_valign(fa_left)
draw_set_halign(fa_top)
draw_set_font(History_font)
self.draw_scroll_content();


// Scrollbar
if (content_height*scale_y > view_h*scale_y) {
    draw_rectangle(
        view_x + view_w - scrollbar_width,
        thumb_y,
        view_x + view_w,
        thumb_y + thumb_h,
        false
    );
}