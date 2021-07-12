/// @description Cat Behavior

// Meow when teleporting
playerSeen = collision_rectangle(x-lookRange,y-lookRange,x+lookRange,y+lookRange,obj_player,false,true);
if playerSeen {
	if (hasMeowed == false) {
	audio_play_sound(snd_meow, 1, 0);
	hasMeowed = true;
	if(!isPurring){
		teleport();
	}
	if (isPurring) {
		global.gameOver = true;
		obj_cat.visible = true;
		instance_create_depth(obj_player.x, obj_player.y, -2000, obj_gameover);
	}
	}
} else {
	if (hasMeowed == true) {
		hasMeowed = false;
	}
}

// Start/stop purring


depth =- y;