if(instance_exists(obj_dialogue)) {
    is_open = false
  exit;
}
// Aggiorna la posizione e la visibilità
var _cam = view_camera[0];

with (obj_menu) {
    if(other.is_open or other.option_open){
        visible = true
    }else{
        visible = false
    }
    
    // Se è aperto, lo muove seguendo la telecamera
    if (visible) {
        x = camera_get_view_x(_cam) + camera_get_view_width(_cam)/2 - sprite_width/2;
        y = camera_get_view_y(_cam) + camera_get_view_height(_cam)/2 - sprite_height/2;
    }
}

with(obj_resume_button){
    if(other.is_open and !other.option_open ){
        visible = true 
    }else{
        visible = false
    }
}

with(obj_eye_menu){
    if(other.is_open and !other.option_open ){
        visible = true 
    } else{
        visible = false
    }
}

with(obj_options_button){
    if(other.is_open and !other.option_open ){
        visible = true 
    } else{
        visible = false
    }
}


with(obj_text_options_1){
    visible = other.option_open
}

with(obj_text_music_1){
    visible = other.option_open
}

with(obj_text_SFX_1){
    visible = other.option_open
}

with(obj_text_fullscreen_1){
    visible = other.option_open
}

with(slider_music_1){
    visible = other.option_open
    if(!other.option_open){
        _first = true
    }
}
with(slider_se_1){
    visible = other.option_open
     if(!other.option_open){
        _first = true
    }
}
with(Checkbox_1){
    visible = other.option_open
}

with(obj_close_1){
    visible = other.option_open
}
