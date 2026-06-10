if(instance_exists(obj_dialogue) or room == Battle_room or room == TitleScreen) {
    is_open = false
  exit;
}

if (keyboard_check_pressed(vk_escape)) {
    if(option_open){
        option_open = false
    }else{
         is_open = !is_open;
    }
   
}