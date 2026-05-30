draw_self()
_dx = xstart
_dy = ystart - 32
var _w = 32
var _h = 32

if(can_talk && !instance_exists(obj_dialogue)){
    draw_sprite(spr_talk,0,_dx,_dy)
}