

potenza_mossa = {
    "bassa":40,
    "media":60,
    "alta":80
}


function Calcola_danno(player,enemy,base_power){
    var atk = player.current_atk
    var lv = player.data.level
    var def = enemy.current_def
    var luck = player.current_luck 
    var crit = 1
    var esito = noone
    
    var rand_crit = irandom_range(0,200)
    if(luck > rand_crit){
        crit = 1.5 //Hai fatto colpo critico!
    }
    
    var danno =round((((2*lv+10)/250)*(atk/def)*base_power+2)*crit*enemy.defend)
    
    if(crit > 1){
        esito = {
            "danno":danno,
            "crit":true
        }
    }else{
        esito = {
            "danno":danno,
            "crit":false
        }
    }
    
    return esito
    
    
}


    
