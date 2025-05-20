// Evento de colisão do obj_poder_invencibilidade com obj_jogador
with (other) {
    global.invencivel = true;
    sprite_index = spr_jogador_poder;

    global.poder_tempo = 600;
    global.poder_tempo_max = 600;  // garante barra com tamanho correto

    audio_stop_sound(som_fundo);
    audio_play_sound(som_poder, 1, true);
}

// Destroi o power-up
instance_destroy();


