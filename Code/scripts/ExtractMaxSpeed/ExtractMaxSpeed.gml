function extract_max_speed_player(array) {
    if (array_length(array) == 0) return noone;

    var max_instance = noone;
    var max_speed = -1 // numero molto basso
    var i 
    var max_i = 0
    
    for(i = 0;i<array_length(array);i++){
        var p = array[i]
        if (p.current_speed > max_speed) {
            max_speed = p.current_speed;
            max_instance = p;
            max_i = i
        }
    }
   
    
    
    array_delete(array,max_i,1)

     return max_instance; 
}