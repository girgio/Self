if(keyboard_check_pressed(vk_f11)){
    global.fullscreen = !global.fullscreen
}   

if(instance_exists(Option_menu)){
    exit
}

if(isIncreasing){
    if(image_xscale >= finish_width and image_yscale >= finish_height)
    {
        isIncreasing = false
    }else{
        if(image_xscale < finish_width){
            image_xscale += 0.1
        }
        
        if(image_yscale < finish_height){
            image_yscale += 0.1
        }
        
    }
}else if(isDecreasing){
	if(image_xscale <= start_width and image_yscale <= start_height)
    {
        isDecreasing = false
    }else{
            if(image_xscale > start_width){
                image_xscale -= 0.1
            }
            
            if(image_yscale > start_height){
                image_yscale -= 0.1
            }
            
        }
}