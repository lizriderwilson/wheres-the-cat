// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function teleport(){
	while (teleportSpot == noone || teleportSpot == previousLocation) {
		teleportSpot = instance_find(obj_room_objects, irandom(instance_number(obj_room_objects) - 1));
	}
	with obj_cat {
		x = teleportSpot.x;
		y = teleportSpot.y + 10;
		audio_emitter_position(purrEmitter, x, y, 0);
	}
	previousLocation = teleportSpot;
}