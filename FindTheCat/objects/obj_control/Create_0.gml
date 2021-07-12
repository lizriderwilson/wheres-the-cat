/// @description Insert description here
// You can write your code in this editor
randomize();
global.startingLocation = instance_find(obj_room_objects, irandom(instance_number(obj_room_objects) - 1));
global.gameOver = false;