// Play watering animation
if ( facing == 'left' ) {
    part_system_depth(ParticleController.psystem, depth - 1000); // Set particles above sprites
    // Spray particles left
    part_emitter_region(ParticleController.psystem, ParticleController.pemitleft, x - 10, x - 10, y - 10, y - 10, ps_shape_rectangle, ps_distr_linear);
    part_emitter_burst(ParticleController.psystem, ParticleController.pemitleft, ParticleController.partleft, 50);
} else if ( facing == 'up' ) {
    part_system_depth(ParticleController.psystem, depth + 1); // Set particles above sprites
    // Spray particles up
    part_emitter_region(ParticleController.psystem, ParticleController.pemitup, x, x, y - 30, y - 30, ps_shape_rectangle, ps_distr_linear);
    part_emitter_burst(ParticleController.psystem, ParticleController.pemitup, ParticleController.partup, 50);    
} else if ( facing == 'right' ) {
    part_system_depth(ParticleController.psystem, depth - 1000); // Set particles above sprites                    
    // Spray particles right
    part_emitter_region(ParticleController.psystem, ParticleController.pemitright, x + 10, x + 10, y - 10, y - 10, ps_shape_rectangle, ps_distr_linear);
    part_emitter_burst(ParticleController.psystem, ParticleController.pemitright, ParticleController.partright, 50);
} else if ( facing == 'down' ) {
    part_system_depth(ParticleController.psystem, depth - 1000); // Set particles above sprites
    // Spray particles down
    part_emitter_region(ParticleController.psystem, ParticleController.pemitdown, x, x, y, y, ps_shape_rectangle, ps_distr_linear);
    part_emitter_burst(ParticleController.psystem, ParticleController.pemitdown, ParticleController.partdown, 50);
}

audio_play_sound(snd_water, 0, 0);
