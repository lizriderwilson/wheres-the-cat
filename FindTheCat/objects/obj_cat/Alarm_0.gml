/// @description Stop purring

audio_emitter_falloff(purrEmitter, 1, 1, 1);
isPurring = false;
alarm[1] = irandom_range(purrRange1, purrRange2);