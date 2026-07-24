var follower1 = instance_create_layer(_x,_y,"Instances",obj_player2);
follower1.follow_index = 1;
array_push(global.party, follower1);
alarm[2] = 100