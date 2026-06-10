
draw_set_font(Font2)
draw_set_halign(fa_center)
draw_set_valign(fa_center)

var modifier = 1.3
_w = 0.25*global.w_res*0.6
_x = xstart*(global.w_res/camera_get_view_width(view_camera[0]))+(0.5*self.sprite_width)-(0.5*_w)
_x_text = _x + _w/2
_h = 0.15*(global.h_res*(1/9))
_y = ystart*(global.h_res/camera_get_view_height(view_camera[0]))-_h*5.8*modifier
_y_text = ystart*(global.h_res/camera_get_view_height(view_camera[0]))-_h*(5.8*modifier-0.5)
draw_sprite_stretched(spr_box,0,_x,_y,_w,_h)
draw_sprite_stretched_ext(spr_box,1,_x,_y,_w*(data.hp/data.hp_max),_h,c_red ,1)

draw_text(_x_text,_y_text,string(data.hp)+"/"+string(data.hp_max))

_y_text -= _h*2
draw_text_colour(_x_text,_y_text,$"{data.name} LV.{data.level}",c_dkgray,c_dkgray,c_dkgray,c_dkgray,1)
draw_set_font(History_font)
_y_text += _h*3

draw_set_halign(fa_top)
draw_text(_x_text- font_get_size(History_font)*11,_y_text,"ATK")
draw_set_halign(fa_center)
draw_set_valign(fa_center)
draw_text(_x_text,_y_text,$"             MATK      DEF        SPD        LK")
_y_text += _h*0.8


if(mod_atk == 1){
    draw_sprite_stretched(global.spr_up1,0,_x_text- font_get_size(History_font)*11,_y_text,30,30)
}else if(mod_atk == 2){
    draw_sprite_stretched(global.spr_up2,0,_x_text - font_get_size(History_font)*11,_y_text,30,30)
}else if(mod_atk == -1){
    draw_sprite_stretched(global.spr_down1,0,_x_text - font_get_size(History_font)*11,_y_text,30,30)
}else if(mod_atk == -2){
     draw_sprite_stretched(global.spr_down2,0,_x_text - font_get_size(History_font)*11,_y_text,30,30)
}

if(mod_matk == 1){
    draw_sprite_stretched(global.spr_up1,0,_x_text - font_get_size(History_font)*6,_y_text,30,30)
}else if(mod_matk == 2){
    draw_sprite_stretched(global.spr_up2,0,_x_text - font_get_size(History_font)*6,_y_text,30,30)
}else if(mod_matk == -1){
    draw_sprite_stretched(global.spr_down1,0,_x_text - font_get_size(History_font)*6,_y_text,30,30)
}else if(mod_matk == -2){
     draw_sprite_stretched(global.spr_down2,0,_x_text - font_get_size(History_font)*6,_y_text,30,30)
}

if(mod_def == 1){
    draw_sprite_stretched(global.spr_up1,0,_x_text- font_get_size(History_font)*1,_y_text,30,30)
}else if(mod_def == 2){
    draw_sprite_stretched(global.spr_up2,0,_x_text - font_get_size(History_font)*1,_y_text,30,30)
}else if(mod_def == -1){
    draw_sprite_stretched(global.spr_down1,0,_x_text - font_get_size(History_font)*1,_y_text,30,30)
}else if(mod_def == -2){
     draw_sprite_stretched(global.spr_down2,0,_x_text - font_get_size(History_font)*1,_y_text,30,30)
}

if(mod_spd == 1){
    draw_sprite_stretched(global.spr_up1,0,_x_text + font_get_size(History_font)*4,_y_text,30,30)
}else if(mod_spd == 2){
    draw_sprite_stretched(global.spr_up2,0,_x_text - font_get_size(History_font)*4,_y_text,30,30)
}else if(mod_spd == -1){
    draw_sprite_stretched(global.spr_down1,0,_x_text - font_get_size(History_font)*4,_y_text,30,30)
}else if(mod_spd == -2){
     draw_sprite_stretched(global.spr_down2,0,_x_text - font_get_size(History_font)*4,_y_text,30,30)
}

if(mod_lk == 1){
    draw_sprite_stretched(global.spr_up1,0,_x_text + font_get_size(History_font)*9,_y_text,30,30)
}else if(mod_lk == 2){
    draw_sprite_stretched(global.spr_up2,0,_x_text - font_get_size(History_font)*9,_y_text,30,30)
}else if(mod_lk == -1){
    draw_sprite_stretched(global.spr_down1,0,_x_text - font_get_size(History_font)*9,_y_text,30,30)
}else if(mod_lk == -2){
     draw_sprite_stretched(global.spr_down2,0,_x_text - font_get_size(History_font)*9,_y_text,30,30)
}
draw_set_font(Font2)

var _y_icon = ystart*(global.h_res/camera_get_view_height(view_camera[0]))-_h*5.6
var _x_icon = xstart*(global.w_res/camera_get_view_width(view_camera[0]))+self.sprite_width + 0.2*_w
if(_state == global.states.burn){
    draw_sprite_stretched(spr_burn,0,_x_icon,_y_icon,global.w_res*0.04,global.h_res*0.08)
}else if(_state == global.states.freeze){
    draw_sprite_stretched(spr_ice,0,_x_icon,_y_icon,global.w_res*0.04,global.h_res*0.08)
}else if(_state == global.states.bleeding){
    draw_sprite_stretched(spr_blood,0,_x_icon,_y_icon,global.w_res*0.04,global.h_res*0.08)
}else if(_state == global.states.sleep){
     draw_sprite_stretched(spr_zzz,0,_x_icon,_y_icon,global.w_res*0.04,global.h_res*0.08)
}else if(_state == global.states.stunned){
     draw_sprite_stretched(spr_stunned,0,_x_icon,_y_icon,global.w_res*0.04,global.h_res*0.08)
}

draw_set_valign(fa_left)
draw_set_halign(fa_top)


