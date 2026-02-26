movement_speed = 1;
name = "Kristo"
tilemap = layer_tilemap_get_id("Collision");
hp = 1
hp_max = hp
atk = 5
m_atk = 5
def = 10
mp = 15
mp_max = mp
_speed = 10
_precision = 100
luck = 1
level = 1
xp = 0
xp_required = 100
position_history = ds_list_create();
history_length = 30
leader_is_moving = false;
hor = 0
ver = 0

show_debug_log(true)

add_exp = function(obtained_exp){
    xp += obtained_exp
    while(xp >= xp_required){
        xp -= xp_required
        level++
        xp_required *= 1.5
        
        hp_max += 5
        hp += 5
        atk += 1
    }
}
window_set_fullscreen(1)