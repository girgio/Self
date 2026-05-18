if(instance_exists(obj_dialogue)) {
    is_open = false
  exit;
}
// Aggiorna la posizione e la visibilità
var _cam = view_camera[0];

with (obj_menu) {
    // Rende il menu visibile solo se is_open è true
    visible = other.is_open; 
    
    // Se è aperto, lo muove seguendo la telecamera
    if (visible) {
        x = camera_get_view_x(_cam) + camera_get_view_width(_cam)/2 - sprite_width/2;
        y = camera_get_view_y(_cam) + camera_get_view_height(_cam)/2 - sprite_height/2;
    }
}

with(obj_resume_button){
    visible = other.is_open; 
}

with(obj_eye_menu){
    visible = other.is_open; 
}