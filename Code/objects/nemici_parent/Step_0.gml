if(instance_exists(obj_dialogue)) exit;
    
if(obj_menu_manager.is_open) exit;
hor = clamp(target_x-x,-1,1);
ver = clamp(target_y-y,-1,1);
move_and_collide(hor*speed_m,ver*speed_m,[tilemap,nemici_parent,layer_tilemap_get_id("layer_items_collide")])