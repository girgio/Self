if(instance_exists(obj_dialogue)){
    alarm[0] = 10
}else{
    obj_cutscene_manager.start = false
    room_goto(Room1)
    instance_destroy()
}