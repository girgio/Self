if(instance_exists(obj_dialogue)){
    alarm[0] = 10
}else{
    obj_cutscene_manager.start = false
    instance_destroy()
}