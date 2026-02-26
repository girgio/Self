global.party = array_create(0);

var leader = instance_create_layer(200,300,"Instances",Indiano);
array_push(global.party, leader);

var follower1 = instance_create_layer(200,300,"Instances",obj_player2);
follower1.follow_index = 1;
array_push(global.party, follower1);

var follower2 = instance_create_layer(200,300,"Instances",obj_player3);
follower2.follow_index = 2;
array_push(global.party, follower2);

var follower3 = instance_create_layer(200,300,"Instances",obj_player4);
follower2.follow_index = 3;
array_push(global.party, follower3);

