function draw_text_markup(_x, _y, _text,sep,w) {
    var xx = _x;
    var yy = _y;
    var base_color = c_white;
    var current_color = base_color;

    var i = 1;
    while (i <= string_length(_text)) {
        var ch = string_char_at(_text, i);

        // rileva tag tipo [red]
        if (ch == "[") {
            // cerco la chiusura del tag manualmente
            var fin = i + 1;
            while (fin <= string_length(_text) && string_char_at(_text, fin) != "]") {
                fin++;
            }

            if (fin <= string_length(_text)) {
                var tag = string_copy(_text, i+1, fin - i - 1);

                switch (tag) {
                    case "red":    current_color = c_red; break;
                    case "green":  current_color = c_lime; break;
                    case "blue":   current_color = c_blue; break;
                    case "yellow": current_color = c_yellow; break;
                    case "white":  current_color = c_white; break;
                    case "black":  current_color = c_black; break;
                    case "/":      current_color = base_color; break;
                }

                i = fin + 1;
                continue;
            }
        }

        draw_set_color(current_color);
        draw_text_ext(xx, yy, ch,sep,w);
        xx += string_width(ch);

        i++;
    }

    draw_set_color(base_color);
}


