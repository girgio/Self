

first = false
var exact = obj_battle_line._num
var wrong = num_instance - exact
var exact_filt = int64(exact - wrong)
var _max = obj_battle_line._max

show_debug_message($"{_max}%")

var bonus_time = 1


if(_time <= obj_battle_line._time_max){
    bonus_time = 2
}else if(_time <= obj_battle_line._time_max*2){
    bonus_time = 1.5
}else{
	bonus_time = 1
}
 
perc = (exact_filt/_max)*100

if(perc <= 0){
    perc = 1
}
perc *= bonus_time


show_debug_message($"{perc}%")

