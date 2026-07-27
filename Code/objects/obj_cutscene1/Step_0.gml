if(first or finish) exit;
    
if(instance_exists(obj_dialogue)) exit;
    
Indiano.target_x = target_x_E
Indiano.target_y = target_y_E

if(!instance_exists(obj_player2)) exit;
obj_player2.target_x = target_x_A
obj_player2.target_y = target_y_A


if(!instance_exists(obj_player3)) exit;
obj_player3.target_x = target_x_K
obj_player3.target_y = target_y_K

if(!instance_exists(obj_player4)) exit;
obj_player4.target_x = target_x_I
obj_player4.target_y = target_y_I

if(alarm[2] == -1){
    alarm[2] = 40
}


if(Indiano.x == target_x_E and Indiano.y == target_y_E and obj_player4.target_x == obj_player4.x and obj_player4.target_y == obj_player4.y and alarm[0] == -1){
    alarm[0] = 10
    create_dialogue(global.dialogo_iniziale_ENG)
    finish = true
}