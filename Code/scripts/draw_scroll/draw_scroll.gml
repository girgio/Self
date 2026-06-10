function draw_scroll_content(moves){
    var line_h = 20;
    var yy = view_y - scroll_y;

for (var i = 0; i < array_length(moves); i++) {
    draw_text(view_x + 8, yy, moves[i]);
    yy += line_h;
}

content_height = array_length(moves) * line_h;
}