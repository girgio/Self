
if(room == TitleScreen and first_time){
    audio_stop_all()
    music = Intro
    audio_play_sound(music,1,true)
    audio_sound_gain(music,0,0)//porta il volume a 0 in 0 ms
    audio_sound_gain(music,music_volume,500)//porta il volume a 1 in 500 ms
    first_time = false
}

if(room == Room1 and first_time){
    audio_stop_all()
    music = Laboratorio_no_suno
    audio_play_sound(music,1,true)
    audio_sound_gain(music,0,0)//porta il volume a 0 in 0 ms
    audio_sound_gain(music,music_volume,500)//porta il volume a 1 in 500 ms
    first_time = false
}

if(room == Battle_room and first_time){
    audio_stop_all()
    music = Battaglia_orchestra
    audio_play_sound(music, 1, true)
    audio_sound_gain(music,0,0)//porta il volume a 0 in 0 ms
    audio_sound_gain(music,music_volume,500)//porta il volume a 3 in 500 ms
    first_time = false
}

if (room != previous_room ){
    previous_room = room
    alarm[1] = 30 //chiama l'allarme 1 tra 180 frame(3 secondi)
    /*In questo modo lo step event aspetta che la cannzone sia terminata
    prima di stopparla e avviarne una nuova*/
}

if(instance_exists(slider_music) or (instance_exists(obj_menu_manager) and obj_menu_manager.option_open) and (music != 0)){
    audio_sound_gain(music,music_volume,0)
}

