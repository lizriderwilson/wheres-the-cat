/// @description Insert description here
// You can write your code in this editor

playerSeen = collision_rectangle(x-lookRange,y-lookRange,x+lookRange,y+lookRange,obj_player,false,true);
if playerSeen {
	if (hasMeowed == false) {
	audio_play_sound(snd_meow, 1, 0);
	hasMeowed = true;
	}
} else {
	if (hasMeowed == true) {
		hasMeowed = false;
	}
}

depth =- y;