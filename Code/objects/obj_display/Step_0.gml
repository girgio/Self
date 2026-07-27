if (instance_exists(obj_dialogue)) exit;

if (instance_exists(Indiano)) {
    // 1. Distanza di controllo davanti agli occhi dell'Indiano
    var _check_dist = 12; 
    
    // 2. Troviamo il punto X, Y esattamente DAVANTI all'Indiano
    var _check_x = Indiano.x + lengthdir_x(_check_dist, Indiano.direction);
    var _check_y = Indiano.y + lengthdir_y(_check_dist, Indiano.direction);
    
    // 3. Controlliamo se quel punto davanti all'Indiano tocca QUESTO NPC (id)
    if (position_meeting(_check_x, _check_y, id)) {
        can_talk = true;
        
        if (keyboard_check_pressed(input_key)) {
            create_dialogue(dialogue);
            dialogue = global.display_dialogue_ENG_2
        }
    } else {
        can_talk = false;
    }
} else {
    can_talk = false;
}