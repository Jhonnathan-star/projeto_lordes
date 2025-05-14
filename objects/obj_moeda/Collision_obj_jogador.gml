if (!coletada) {
    // Marca como coletada
    coletada = true;

    // Adiciona ponto
    global.pontuacao += 1;

    // Incrementa as moedas da partida (somente as moedas dessa partida)
    global.moedas_da_partida += 1;

    // Toca o som da moeda
    audio_play_sound(som_moedas, 1, false); // índice de prioridade 1, não em loop

    // Troca para sprite de animação
    sprite_index = spr_moeda_coletada;
    image_index = 0;
    image_speed = 0.5;

    // Define alarme para sumir após 0.5 segundos
    alarm[0] = room_speed * 0.05;
}

