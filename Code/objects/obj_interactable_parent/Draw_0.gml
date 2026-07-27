draw_self()
var _check_dist = 12; 
    
    // 2. Troviamo il punto X, Y esattamente DAVANTI all'Indiano
    var _check_x = Indiano.x + lengthdir_x(_check_dist, Indiano.direction);
    var _check_y = Indiano.y + lengthdir_y(_check_dist, Indiano.direction);

draw_circle(_check_x,_check_y,1,false)