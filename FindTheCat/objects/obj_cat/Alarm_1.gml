/// @description Start purring

purrEmitter = audio_emitter_create();
audio_emitter_position(purrEmitter, x, y, 0);
audio_falloff_set_model(audio_falloff_exponent_distance);
audio_emitter_falloff(purrEmitter, fadeStart, maxDist, 1);
audio_play_sound_on(purrEmitter, useSound, 1, 1);
isPurring = true;
alarm[0] = irandom_range(purrRange1, purrRange2);