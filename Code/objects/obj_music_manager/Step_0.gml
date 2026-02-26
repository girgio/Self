if(room == Room1 and first_time){
    audio_stop_all()
    audio_play_sound(Overworld,1,true)
    first_time = false
}

if(room == Battle_room and first_time){
    audio_stop_all()
    audio_play_sound(Battaglia_orchestra, 1, true)
    first_time = false
}

if (room != previous_room ){
    first_time=true
    previous_room = room
}
