if(instance_exists(obj_dialogue)) exit;
    

    
if(instance_exists(Indiano) && distance_to_object(Indiano) < 2.5){
    can_talk = true
    if(keyboard_check_pressed(input_key)){
        create_dialogue(dialogue)
    }
    
}
else{
    can_talk = false
}