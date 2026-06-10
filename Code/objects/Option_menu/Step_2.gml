obj_music_manager.music_volume = (slider_music.x - lim_x1)/(lim_x2 - lim_x1)
obj_music_manager.se_volume = (slider_se.x - lim_x1)/(lim_x2 - lim_x1)

if(obj_music_manager.music_volume < 0.05){
   obj_music_manager.music_volume = 0 
}

if(obj_music_manager.se_volume < 0.05){
    obj_music_manager.se_volume = 0
}

show_debug_message(obj_music_manager.music_volume)
if(keyboard_check_pressed(vk_escape)){
    instance_deactivate_layer("Option_scroll")
    instance_deactivate_layer("Option_menu")
}