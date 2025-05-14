event_inherited();

acao_botao = function()
{
	layer_set_visible("Ui_game_over", 0);
	// Salva o saldo de moedas no arquivo INI
	ini_open("moedas_saldo.ini");
	ini_write_real("saldo", "moedas", global.moedas + global.moedas_da_partida);  // Soma o saldo global com as moedas da partida
	ini_close();

// Reseta as moedas da partida para 0 (para a próxima partida)
	global.moedas_da_partida = 0; // Zera as moedas da partida após o fim do jogo
	
	room_goto(room_game); 
}