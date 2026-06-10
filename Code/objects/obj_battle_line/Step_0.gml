var _collision_list = ds_list_create();

_num = instance_place_list(x, y, obj_battle_red_check, _collision_list, false);

if(_num > 0){
    //show_debug_message($"numero {_num}")
}

ds_list_destroy(_collision_list);