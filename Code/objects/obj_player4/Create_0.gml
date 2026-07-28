move_speed = 1;
name = "Isabelle"
tilemap = layer_tilemap_get_id("Collision");
hp = 8
hp_max = hp
atk = 7
m_atk = 16
def = 9
_precision = 100
mp = 20
mp_max = mp
level = 1
_speed = 8
luck = 10
xp = 0
xp_required = 100
target_x = obj_player3.x;
target_y = obj_player3.y;
movement_h = target_x-x
movement_v = target_y - y
hor = clamp(movement_h,-1,1);
ver = clamp(movement_v,-1,1);
follow_index = 3
_state = noone


//magie
magics = [obj_magic_thunder]

//oggetti
items = [obj_item_potion]
num_items = [1]//numero di oggetti, il numero di oggetti items[i] è num_items[i]


//aumento di statistiche

atk_up = 1
hp_up = 2
mp_up = 4
matk_up = 4
_speed_up = 1
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
    }
}