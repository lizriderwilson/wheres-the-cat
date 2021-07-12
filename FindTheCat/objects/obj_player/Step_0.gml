/// @description Insert description here
// You can write your code in this editor

// Check keys for movement
moveRight = keyboard_check(vk_right) or keyboard_check(ord("D")) or gamepad_button_check(0, gp_padr);
moveUp = keyboard_check(vk_up) or keyboard_check(ord("W")) or gamepad_button_check(0, gp_padu);
moveLeft = keyboard_check(vk_left) or keyboard_check(ord("A")) or gamepad_button_check(0, gp_padl);
moveDown = keyboard_check(vk_down) or keyboard_check(ord("S")) or gamepad_button_check(0, gp_padd);

// Calculate movement
vx = ((moveRight - moveLeft) * walkSpeed);
vy = ((moveDown - moveUp) * walkSpeed);

if (vx == 0 && vy == 0) {
	// Change idle Sprite based on last direction
	switch dir {
		case 0: sprite_index = spr_player_idle_dr; break;
		case 1: sprite_index = spr_player_idle_ur; break;
		case 2: sprite_index = spr_player_idle_ul; break;
		case 3: sprite_index = spr_player_idle_dl; break;
	}
}

if (vx != 0 || vy != 0) {
	
	if !collision_point(x+vx, y, obj_parent_collideable, true, true) {
		x += vx;
	}
	if !collision_point(x, y+vy, obj_parent_collideable, true, true) {
		y += vy;
	}
	
	// Change walking Sprite based on direction
	if (vx > 0) {
	sprite_index = spr_player_walking_dr;
	dir = 0;
	}
	if (vx < 0) {
	sprite_index = spr_player_walking_ul;
	dir = 2;
	}
	if (vy > 0) {
	sprite_index = spr_player_walking_dl;
	dir = 3;
	}
	if (vy < 0) {
	sprite_index = spr_player_walking_ur;
	dir = 1;
	}
	
	// Move audio listener
	audio_listener_set_position(0, x, y, 0);
}

depth =- y;