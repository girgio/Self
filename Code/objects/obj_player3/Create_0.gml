
name = "Karl"
tilemap = layer_tilemap_get_id("Collision");
hp = 10
hp_max = hp
atk = 8
m_atk = 14
def = 8
_precision = 100
mp = 20
mp_max = mp
_speed = 10
luck = 7
level = 1
xp = 0
xp_required = 100
alarm[0] = 25
target_x = obj_player2.x;
target_y = obj_player2.y;
movement_h = target_x-x
movement_v = target_y - y
follow_index = 2
position_history = ds_list_create();
history_length = 30
leader_is_moving = false;
hor = 0
ver = 0
move_speed = 1;
_state = noone

//magie
magics = [obj_magic_heal]


//oggetti
items = [obj_item_potion]
num_items = [2]//numero di oggetti, il numero di oggetti items[i] è num_items[i]


//aumento di statistiche

atk_up = 1
hp_up = 2
mp_up = 4
matk_up = 3
_speed_up = 2
def_up = 1
luck_up = 1
levels_obtained = 0
add_exp = function(obtained_exp){
    xp += obtained_exp
    while(xp >= xp_required){
        xp -= xp_required
        level++
        xp_required *= 1.5
        
        hp_max += hp_up
        hp += hp_up
        mp += mp_up
        mp_max += mp_up
        atk += atk_up
        m_atk += matk_up
        _speed += _speed_up
        def += def_up
        luck += luck_up
        
        levels_obtained++
        
        if(levels_obtained == 3){
            array_push(magics,obj_magic_ice)
             obj_battle_dialog._string = $"{name} impara {obj_magic_ice.name}"
        }
    }
}