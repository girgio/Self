

if(instance_exists(obj_dialogue)) exit;
    
if(instance_exists(Indiano) && distance_to_object(Indiano) < 8){
    can_talk = true
    if(keyboard_check_pressed(input_key)){
        audio_play_sound(obj_music_manager.click,1,false)
        create_dialogue(dialogue)
    }
    
}
else{
    can_talk = false
}