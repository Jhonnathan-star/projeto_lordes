event_inherited();

acao_botao = function() {
    global.paused = false; // Garante que o jogo não continue pausado na próxima sala

    // Esconde a camada de pause e mostra o menu
    layer_set_visible("Ui_pause", 0);
	layer_set_visible("Ui_menu", 1);

    // Para a música do jogo
    audio_stop_sound(som_fundo);

    // Muda para a sala do menu
    room_goto(Room1);
};
