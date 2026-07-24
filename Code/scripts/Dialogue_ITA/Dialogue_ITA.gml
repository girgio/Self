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
    "msg":"Sono una persona e sto bene.",
    "img":spr_pesce
},
{
    "name":"Elijah",
    "msg":"Eh, anche io.",
    "img":spr_player_walk_down
}

]

dialogo_iniziale_IT =[
{
    "name":"Elijah",
    "msg":"Dove cazzo mi trovo?!",
    "img":noone
},
{
    "name":"Karl",
    "msg":"State tutti bene? Sono un Innato specializzato in magie curative.",
    "img":noone
},
{
    "name":"Andrea",
    "msg":"Tieni la tua magia lontana da me. Sono sopravvissuta a di peggio.",
    "img":noone    
},
{
    "name":"Elijah",
    "msg":"Haha...",
    "img":noone
},
{
    "name":"Andrea",
    "msg":"Cosa trovi di divertente?",
    "img":noone
},
{
    "name":"Elijah",
    "msg":"Rifiuti l'aiuto di un Innato solo perchè non sei capace ad utilizzare la magia? Patetico.",
    "img":noone
},
{   "name":"Andrea",
    "msg":"Non ho bisogno della magia per...",//Donato è un genio
    "img":noone
},
{ 
    "name":"Karl",
    "msg":"Non c'è bisogno di litigare. Ognuno ha i propri punti di forza.",
    "img":noone
},
{
    "name":"Isabelle",
    "msg":"Mettetevi a litigare adesso, bravi! In una situazione di merda come questa... O collaboriamo, o da qui non usciamo vivi.",
    "img":noone
},
{
    "name":"Elijah",
    "msg":"Hai ragione...",
    "img":noone
},
{
    "name":"Elijah",
    "msg":"Io mi chiamo Elijah, sono un Innato.",
    "img":noone
},
{
    "name":"Karl",
    "msg":"Io sono Karl, e come vi dicevo sono un Innato anche io.",
    "img":noone
},
{
    "name":"Isabelle",
    "msg":"Piacere Isabelle. Sono una maga.",
    "img":noone
},
{
    "name":"Andrea",
    "msg":"Fantastico. Sono circondata da bambini che giocano con i ramoscelli.",
    "img":noone
},
{
    "name":"Isabelle",
    "msg":"Ok... e saresti così gentile da dirci come ti chiami?",
    "img":noone
},
{
    "name":"Andrea",
    "msg":"Andrea...",
    "img":noone
},
{
    "name":"Karl",
    "msg":"Bene, ora che ci siamo presentati, dovremmo andare a cercare qualcuno della Resistenza.",
    "img":noone
},
{
    "name":"Karl",
    "msg":"Direi che l'esperimento non sia andato benissimo.",
    "img":noone
},
{
    "name":"Andrea",
    "msg":"Perspicace, il cervello infuso di magia.",
    "img":noone
},
{
    "name":"Elijah",
    "msg":"Esperimento?",
    "img":noone
},
{
    "name":"Karl",
    "msg":"Oh... mi spiace. Quindi sei stato portato qui contro la tua volontà.",
    "img":noone
},
{
    "name":"Elijah",
    "msg":"...",
    "img":noone
},
{
    "name":"Karl",
    "msg":"Tutto bene, Elijah?",
    "img":noone
},
{
    "name":"Elijah",
    "msg":"Mia sorella... prima era con me.",
    "img":noone
},
{
    "name":"Isabelle",
    "msg":"Forse...",
    "img":noone
},
{
    "name":"Isabelle",
    "msg":"Aspetta. In quella stanza c'erano cinque lettini.",
    "img":noone
},
{
    "name":"Elijah",
    "msg":"No...",
    "img":noone
},
{
    "name":"Karl",
    "msg":"Il suo corpo non era lì, Elijah. Sono sicuro che sta bene.",
    "img":noone
},
{
    "name":"Andrea",
    "msg":"Ci vogliamo dare una mossa? Non voglio perdere altro tempo.",
    "img":noone
},
]

porta_dialogue_ITA = [
{
    "name":"Karl",
    "msg":"Tua sorella sicuramente non è qui, troviamo qualcuno che possa aiutarci.",
    "img":noone
}
]

display_dialogue_ITA = [
{
    "name":noone,
    "msg":"E' un display per l'analisi dati, in questo momento mostra un messaggio",
    "img":noone
},
{
    "name":noone,
    "msg":"\"-Progetto SELF / Sezione S- Collegamento riuscito, il bersaglio non presenta alcuna energia riconducibile alla magia\"",
    "img":noone
}
]

