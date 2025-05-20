// Ativa o poder no jogador
with (other) {
    global.invencivel = true;
    sprite_index = spr_jogador_poder;

    // Timer de 10 segundos (600 frames)
    global.poder_tempo = 600;

    // Troca a música: para a de fundo e toca a do poder
    audio_stop_sound(som_fundo);       // Parar a música de fundo
    audio_play_sound(som_poder, 1, true); // Tocar a música do poder (loop)
}

// Destroi o power-up
instance_destroy();

