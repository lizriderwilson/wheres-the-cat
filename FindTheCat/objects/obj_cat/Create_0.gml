/// @description Setup variables

playerSeen = noone;
lookRange = 50;
hasMeowed = false;
previousLocation = global.startingLocation;
teleportSpot = noone;
isPurring = true;
purrRange1 = 120;
purrRange2 = 600;

purrEmitter = 0;
if (!audio_is_playing(useSound)) {
	purrEmitter = audio_emitter_create();
	audio_emitter_position(purrEmitter, x, y, 0);
	audio_falloff_set_model(audio_falloff_exponent_distance);
	audio_emitter_falloff(purrEmitter, fadeStart, maxDist, 1);
	audio_play_sound_on(purrEmitter, useSound, 1, 1);
}

alarm[0] = irandom_range(purrRange1, purrRange2);