movement_speed = 1;
name = "Kristo"
tilemap = layer_tilemap_get_id("Collision");
hp = 40
hp_max = hp
atk = 10
m_atk = 20
def = 15
mp = 15
mp_max = mp
_speed = 15
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

//magie
magics = [obj_magic_fire]

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