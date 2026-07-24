global.party = array_create(0);
_x = obj_cutscene1.x
_y = obj_cutscene1.y

alarm[0] = 120
leader = instance_create_layer(_x,_y,"Instances",Indiano);
leader.visible = false
array_push(global.party, leader);

