event_inherited();

acao_botao = function() {
    global.paused = false; // Garante que o jogo não continue pausado na próxima sala

    // Esconde a camada de pause e mostra o menu
    layer_set_visible("Ui_pause", 0);
	layer_set_visible("Ui_menu", 1);

    // Para a música do jogo
    audio_stop_sound(som_fundo);
	
	// Salva o saldo de moedas no arquivo INI
	ini_open("moedas_saldo.ini");
	ini_write_real("saldo", "moedas", global.moedas + global.moedas_da_partida);  // Soma o saldo global com as moedas da partida
	ini_close();

// Reseta as moedas da partida para 0 (para a próxima partida)
	global.moedas_da_partida = 0; // Zera as moedas da partida após o fim do jogo

    // Muda para a sala do menu
    room_goto(Room1);
};
