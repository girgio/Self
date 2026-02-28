function create_dialogue(_messages){
    if(instance_exists(obj_dialogue)) return;
        
    var _inst = instance_create_depth(0,0,0,obj_dialogue)
    _inst.message = _messages
    _inst.current_message = 0
    

}

barbone_dialogue = [
{
    "name":"Ciucciapalle",
    "msg":"Ciao, sono un barbone che per vivere succhia palle pelose",
    "img":spr_pesce
},
{
    "name":"Ciucciapalle",
    "msg":"Voglio strapparti i peli pubici a morsi, ti prego lasciamelo fare altrimenti diventerò gay",
    "img":spr_pesce
},
{
    "name":"Abgadlad",
    "msg":"Non provarci nemmeno altrimenti ti faccio esplodere dio can",
    "img":spr_player_walk_down
}

]