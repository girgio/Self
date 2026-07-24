if(first or finish) exit;
    
if(instance_exists(obj_dialogue)) exit
    
Indiano.target_x = target_x_E
Indiano.target_y = target_y_E

obj_player2.target_x = target_x_A
obj_player2.target_y = target_y_A

obj_player3.target_x = target_x_K
obj_player3.target_y = target_y_K

obj_player4.target_x = target_x_I
obj_player4.target_y = target_y_I

if(Indiano.x == target_x_E and Indiano.y == target_y_E){
    is_moving = false
}

if(is_moving) exit;
create_dialogue(global.dialogo_iniziale_ENG)
alarm[0] = 10
first = true 
finish = true