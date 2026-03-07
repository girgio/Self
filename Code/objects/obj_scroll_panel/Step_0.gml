// Mouse wheel
x = view_x_sprite*room_width/global.w_res
var wheel = mouse_wheel_up() - mouse_wheel_down();
scroll_y -= wheel * scroll_speed;

// Clamp
scroll_y = clamp(scroll_y, 0, max(0, content_height - view_h));

// Calcolo thumb
if (content_height*scale_y > view_h*scale_y) {
    thumb_h = view_h * (view_h / content_height);
    thumb_y = view_y + (scroll_y / content_height) * view_h;
}

if (mouse_check_button_pressed(mb_left) and content_height > view_h ) {
    if (point_in_rectangle(mouse_x, mouse_y,
        view_x + view_w - scrollbar_width,
        thumb_y,
        view_x + view_w,
        thumb_y + thumb_h))
    {
        dragging = true;
        drag_offset = mouse_y - thumb_y;
    }
}

if (mouse_check_button_released(mb_left)) {
    dragging = false;
}

if (dragging) {
    thumb_y = mouse_y - drag_offset;
    thumb_y = clamp(thumb_y, view_y, view_y + view_h - thumb_h);

    scroll_y = ((thumb_y - view_y) / view_h) * content_height;
}

if(open and view_x >= global.w_res - view_w){
    view_x -= speed_open
    view_x_sprite -= speed_open
    sprite_index = spr_arrow_close
}else if(!open and view_x <= global.w_res){
    view_x += speed_open
    view_x_sprite += speed_open
    sprite_index = spr_arrpw_open
}