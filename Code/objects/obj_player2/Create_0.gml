name = "Andrea"
tilemap = layer_tilemap_get_id("Collision");
hp = 14
hp_max = hp
atk = 9
m_atk = 7
def = 14
_precision = 100
mp = 10
mp_max = mp
_speed = 7
luck = 6
level = 1
xp = 0
xp_required = 100
alarm[0] = 20
target_x = Indiano.x;
target_y = Indiano.y;
movement_h = target_x-x
movement_v = target_y - y
position_history = ds_list_create();
history_length = 30
leader_is_moving = false;
hor = 0
ver = 0
move_speed = 1;
_state = noone

//magie
magics = []


//oggetti
items = [obj_item_potion]
num_items = [1]//numero di oggetti, il numero di oggetti items[i] è num_items[i]


//aumento di statistiche

atk_up = 2
hp_up = 4
mp_up = 2
matk_up = 1
_speed_up = 1
def_up = 3
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
        
        if(levels_obtained == 2){
            array_push(magics,obj_magic_blood)
             obj_battle_dialog._string = $"{name} impara {obj_magic_blood.name}"
        }else if(levels_obtained == 4){
            array_push(magics,obj_magic_down)
             obj_battle_dialog._string = $"{name} impara {obj_magic_down.name}"
        }
    }
}