draw_set_font(Font2)
draw_set_halign(fa_center)
draw_set_valign(fa_center)
draw_sprite_stretched(sprite_index,0,view_x_sprite,global.h_res*(y)/room_height,global.w_res*sprite_width/room_width,global.h_res*sprite_height/room_height)
draw_sprite_stretched(spr_box,0,view_x, view_y, view_w, view_y + view_h + 0.2*view_h);
draw_text(view_x + 0.5*view_w,view_y + 30,"Storico mosse")
gpu_set_scissor(view_x, view_y + 0.2*view_h, view_x + view_w, view_y + view_h);

draw_set_valign(fa_left)
draw_set_halign(fa_top)
draw_set_font(History_font)
self.draw_scroll_content();


// Scrollbar
if (content_height > view_h) {
    draw_rectangle(
        view_x + view_w - scrollbar_width,
        thumb_y,
        view_x + view_w,
        thumb_y + thumb_h,
        false
    );
}