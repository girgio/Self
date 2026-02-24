draw_self()
_dx = xstart
_dy = ystart - 16

if(can_talk && !instance_exists(obj_dialogue)){
    draw_sprite(spr_talk,0,_dx,_dy)
}