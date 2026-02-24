

potenza_mossa = {
    "bassa":40,
    "media":60,
    "alta":80
}


function Calcola_danno(player,enemy){
    var atk = player.data.atk
    var lv = player.data.level
    var def = enemy.data.def
    var luck = player.data.luck 
    var crict = 1
    
    var rand_crit = irandom_range(0,100)
    if(luck > rand_crit){
        crict = 1.5 //Hai fatto colpo critico!
    }
    
    var danno =round((((2*lv+10)/250)*(atk/def)*global.potenza_mossa.bassa+2)*crict)
    
    return danno
    
    
}


    
