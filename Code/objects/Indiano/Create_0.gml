movement_speed = 1;
name = "Kristo"
tilemap = layer_tilemap_get_id("Collision");
hp = 30
hp_max = hp
atk = 10
m_atk = 11
def = 10
mp = 15
mp_max = mp
_speed = 30
_precision = 100
luck = 10
level = 1
position_history = ds_list_create();
history_length = 30
leader_is_moving = false;
hor = 0
ver = 0
xp = 0
xp_required = 100
_state = noone

//magie
magics = [obj_magic_fire,obj_magic_ice,obj_magic_blood,obj_magic_sleep]

//oggetti
items = [obj_item_potion]
num_items = [3]//numero di oggetti, il numero di oggetti items[i] è num_items[i]


//aumento di statistiche

atk_up = 2
hp_up = 20
mp_up = 10
matk_up = 3
_speed_up = 5
def_up = 3
luck_up = 1
levels_obtained = 0
fullscreen = false


show_debug_log(true)

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
    }
}
window_set_fullscreen(0)