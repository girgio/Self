function extract_max_speed_player(array) {
    if (array_length(array) == 0) return noone;

    var max_instance = noone;
    var max_speed = -1 // numero molto basso
    var i 
    var max_i = 0
    show_debug_message(array_length(array))
    
    for(i = 0;i<array_length(array);i++){
        var p = array[i]
        show_debug_message(p.data.name)
        if (p.data._speed > max_speed) {
            max_speed = p.data._speed;
            max_instance = p;
            max_i = i
        }
    }
   
    
    
    array_delete(array,max_i,1)

     return max_instance; 
}