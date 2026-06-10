lim_x1 = x+35
lim_x2 = lim_x1 + 130
fullscreen_y = slider_se_1.y + 5
if(obj_menu_manager.option_open){
    obj_music_manager.music_volume = (slider_music_1.x - lim_x1)/(lim_x2 - lim_x1)
    obj_music_manager.se_volume = (slider_se_1.x - lim_x1)/(lim_x2 - lim_x1)
}else{
	slider_se_1.x  = obj_music_manager.se_volume*(lim_x2-lim_x1) + lim_x1
    slider_music_1.x = obj_music_manager.music_volume*(lim_x2-lim_x1) + lim_x1
}


if(obj_music_manager.music_volume < 0.05){
   obj_music_manager.music_volume = 0 
}

if(obj_music_manager.se_volume < 0.05){
    obj_music_manager.se_volume = 0
}
