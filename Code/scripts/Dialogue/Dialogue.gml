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

dialogo_iniziale =[
{
    "name":"Elijah",
    "msg":"Ma che cazzo è successo?!",
    "img":noone
},
{
    "name":"Karl",
    "msg":"State tutti bene? Sono un Innato specializzato in magie curative",
    "img":noone
},
{
    "name":"Andrea",
    "msg":"Tieni la tua magia lontanta dal mio corpo, ho subito ferite peggiori di queste",
    "img":noone    
},
{
    "name":"Elijah",
    "msg":"haha...",
    "img":noone
},
{
    "name":"Andrea",
    "msg":"Cosa trovi di divertente?",
    "img":noone
},
{
    "name":"Elijah",
    "msg":"Rifiuti l'aiuto di un mago solo perchè non sei capace ad utilizzare la magia, patetico",
    "img":noone
},
{   "name":"Andrea",
    "msg":"Non ho bisogno della magia per spezzarti in due",
    "img":noone
},
{ 
    "name":"Karl",
    "msg":"Non c'è bisogno di litigare, ognuno ha le sue capacità",
    "img":noone
},
{
    "name":"Isabelle",
    "msg":"Veramente state litigando in questa situazione di merda, dovremmo collaborare per almeno uscire vivi da qui",
    "img":noone
},
{
    "name":"Elijah",
    "msg":"Hai ragione...",
    "img":noone
},
{
    "name":"Elijah",
    "msg":"Io mi chiamo Elijah, sono un Innato",
    "img":noone
},
{
    "name":"Karl",
    "msg":"Io sono Karl, come vi ho già detto anch'io sono un Innato",
    "img":noone
},
{
    "name":"Isabelle",
    "msg":"Piacere Isabelle, sono una maga",
    "img":noone
},
{
    "name":"Andrea",
    "msg":"Sono circondata da svitati magici",
    "img":noone
},
{
    "name":"Isabelle",
    "msg":"Saresti così gentile da dirti come ti chiami?",
    "img":noone
},
{
    "name":"Andrea",
    "msg":"Andrea...",
    "img":noone
},
{
    "name":"Karl",
    "msg":"Bene ora che ci siamo presentati, dovremmo andare a cercare qualcuno della Resistenza",
    "img":noone
},
{
    "name":"Karl",
    "msg":"Ritengo che l'esperimento non sia andato benissimo",
    "img":noone
},
{
    "name":"Andrea",
    "msg":"Perspicace il cervello infuso di magia",
    "img":noone
},
{
    "name":"Eljah",
    "msg":"Esperimento?",
    "img":noone
},
{
    "name":"Karl",
    "msg":"Oh... mi spiace, sei stato portato qui senza la tua volontà",
    "img":noone
},
{
    "name":"Elijah",
    "msg":"...",
    "img":noone
},
{
    "name":"Karl",
    "msg":"Tutto bene Elijah?",
    "img":noone
},
{
    "name":"Elijah",
    "msg":"Mia sorella, era con me",
    "img":noone
},
{
    "name":"Isabelle",
    "msg":"Forse...",
    "img":noone
},
{
    "name":"Isabelle",
    "msg":"I lettini erano 5",
    "img":noone
},
{
    "name":"Elijah",
    "msg":"No...",
    "img":noone
},
{
    "name":"Karl",
    "msg":"Il suo corpo non c'è, sono sicuro che starà bene",
    "img":noone
},
{
    "name":"Andrea",
    "msg":"Ci vogliamo dare una mossa, non voglio perdere altro tempo",
    "img":noone
},
]