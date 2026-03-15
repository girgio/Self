if(room == Room1 and first_time){
    audio_stop_all()
    music = Overworld
    audio_play_sound(Overworld,1,true)
    audio_sound_gain(music,0,0)//porta il volume a 0 in 0 ms
    audio_sound_gain(music,1,3000)//porta il volume a 3 in 3000 ms
    first_time = false
}

if(room == Battle_room and first_time){
    audio_stop_all()
    music = Battaglia_orchestra
    audio_play_sound(Battaglia_orchestra, 1, true)
    audio_sound_gain(music,0,0)//porta il volume a 0 in 0 ms
    audio_sound_gain(music,1,3000)//porta il volume a 3 in 3000 ms
    first_time = false
}

if (room != previous_room ){
    previous_room = room
    alarm[1] = 180 //chiama l'allarme 1 tra 180 frame(3 secondi)
    /*In questo modo lo step event aspetta che la cannzone sia terminata
    prima di stopparla e avviarne una nuova*/
}
