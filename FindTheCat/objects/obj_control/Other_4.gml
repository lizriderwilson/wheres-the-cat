/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_cat)) {
	instance_destroy(obj_cat);
}
instance_create_depth(global.startingLocation.x, global.startingLocation.y + 10, -global.startingLocation.y, obj_cat);