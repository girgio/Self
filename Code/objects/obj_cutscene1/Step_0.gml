if(first or finish) exit;
    
if(keyboard_check_pressed(ord("S"))){
    skip = true
    show_debug_message("Cutscene skippata")
}
    
if(instance_exists(obj_dialogue)) exit;
    

if(move_to_target(target_x_E,target_y_E,Indiano,0.75,spr_player_walk_right,spr_player_walk_right,spr_player_walk_left,spr_player_walk_down)){
    Indiano.sprite_index = spr_player_idle_up
}


if(!instance_exists(obj_player2)) exit;
if(move_to_target(target_x_A,target_y_A,obj_player2,0.75,spr_player_walk_right,spr_player_walk_right,spr_player_walk_left,spr_player_walk_down)){
    obj_player2.sprite_index = spr_player_walk_down //idle
}


if(!instance_exists(obj_player3)) exit;
if(move_to_target(target_x_K,target_y_K,obj_player3,0.75,spr_player_walk_right,spr_player_walk_right,spr_player_walk_left,spr_player_walk_down)){
    obj_player3.sprite_index = spr_player_idle_up 
}

if(!instance_exists(obj_player4)) exit;
if(move_to_target(target_x_I,target_y_I,obj_player4,0.75,spr_player_walk_right,spr_player_walk_right,spr_player_walk_left,spr_player_walk_down)){
    obj_player4.sprite_index = spr_player_walk_down //idle
}


if(alarm[2] == -1){
    alarm[2] = 40
}

if(skip){
    if(alarm[0] == -1){
         alarm[0] = 60
    }
    exit
}


if(Indiano.x == target_x_E and Indiano.y == target_y_E and target_x_I == obj_player4.x and target_y_I == obj_player4.y and alarm[0] == -1){
    alarm[0] = 10
    create_dialogue(global.dialogo_iniziale_ENG)
    finish = true
}