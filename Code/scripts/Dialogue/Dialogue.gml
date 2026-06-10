function create_dialogue(_messages){
    if(instance_exists(obj_dialogue)) return;
        
    var _inst = instance_create_depth(0,0,0,obj_dialogue)
    _inst.message = _messages
    _inst.current_message = 0
    

}

barbone_dialogue = [
{
    "name":"Margolo",
    "msg":"Ciao, sono Margolo, come stai?",
    "img":spr_pesce
},
{
    "name":"Margolo",
    "msg":"Sono una persona e sto bene",
    "img":spr_pesce
},
{
    "name":"Elijah",
    "msg":"Eh, anche io.",
    "img":spr_player_walk_down
}

]