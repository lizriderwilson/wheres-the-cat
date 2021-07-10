/// @description Insert description here
// You can write your code in this editor

// Check keys for movement
moveRight = keyboard_check(vk_right);
moveUp = keyboard_check(vk_up);
moveLeft = keyboard_check(vk_left);
moveDown = keyboard_check(vk_down);

// Calculate movement
vx = ((moveRight - moveLeft) * walkSpeed);
vy = ((moveDown - moveUp) * walkSpeed);

if (vx == 0 && vy == 0) {
}

if (vx != 0 || vy != 0) {
	
	if !collision_point(x+vx, y, obj_parent_collideable, true, true) {
		x += vx;
	}
	if !collision_point(x, y+vy, obj_parent_collideable, true, true) {
		y += vy;
	}
}

depth =- y;