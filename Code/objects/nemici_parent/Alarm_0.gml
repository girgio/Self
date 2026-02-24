if(distance_to_object(Indiano) < range && instance_exists(Indiano)){
    target_x = Indiano.x;
    target_y = Indiano.y;
}else{
    target_x = random_range(xstart-100,xstart+100);
    target_y = random_range(ystart-100,ystart+100);
}
alarm[0]=60;
