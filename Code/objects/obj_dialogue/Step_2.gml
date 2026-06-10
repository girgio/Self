if(current_message < 0) exit;
    
var _str = message[current_message].msg

if(current_char<string_length(_str)){
    is_drawing = true
    current_char += char_speed *(1 + keyboard_check(input_key))
    draw_message = string_copy(_str,0,current_char)
    
}
else if(keyboard_check(input_key)){
    current_message++
    if(current_message >= array_length(message)){
        instance_destroy()
    }else{
        current_char = 0
    }
}

if(current_char>=string_length(_str)){
    is_drawing = false
    first = true
}

if(is_drawing and first){
    var sound = audio_play_sound(music,1,true)
    audio_sound_gain(sound,obj_music_manager.se_volume,0);
    first = false
}else if(!is_drawing){
    audio_stop_sound(music)
}