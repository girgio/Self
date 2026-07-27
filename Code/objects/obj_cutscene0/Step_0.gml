if(finish) exit;
    

if(!instance_exists(obj_dialogue) and first and alarm[2] == -1 and !second){
    alarm[2] = 240
    second = true
}
if(!instance_exists(obj_dialogue) and third and alarm[3] == -1 and !fourth){
    alarm[3] = 240
    fourth = true
}
if(!instance_exists(obj_dialogue) and fifth and alarm[0] == -1 ){
    alarm[0] = 240
    //play suoni morte
    finsh = true
}
if(!first){
    create_dialogue(global.scene_1_EN);   
}
first = true
