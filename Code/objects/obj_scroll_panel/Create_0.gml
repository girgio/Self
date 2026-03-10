view_x = global.w_res*(x+sprite_width)/room_width;
view_x_sprite = global.w_res*(x)/room_width
view_y = global.h_res*(y-sprite_height)/room_height;
view_w = global.w_res*0.2;
view_h = global.h_res*0.4;
scale_x = 1
scale_y = 1

scroll_y = 0;
scroll_speed = 24;


thumb_h = 0
thumb_y = 0

content_height = 0;

dragging = false;
drag_offset = 0;

scrollbar_width = 12;

moves = [];
open = false 
speed_open = 15



function draw_scroll_content(){
    var line_h = 30;
    var yy = (view_y-40)*scale_y+ 0.2*view_h - scroll_y;

    content_height = array_length(moves) * line_h;
    
    for (var i = 0; i < array_length(moves); i++) {
        draw_text(view_x + 8, yy, moves[i]);
        yy += line_h;
    }

}