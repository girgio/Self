function Restore_stat(player){
    player.current_atk = player.data.atk
    player.curretn_matk = player.data.m_atk 
    player.current_def = player.data.def 
    player.current_speed = player.data._speed 
    player.current_luck = player.data.luck
    if(player.is_dead){
        player.is_dead = false
        player.data.hp = 1
    }
    player.mod_atk = 0
    player.mod_def = 0
    player.mod_lk = 0
    player.mod_spd = 0
    player.mod_matk = 0
    
}