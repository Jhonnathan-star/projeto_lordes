event_inherited();

acao_botao = function()
{
	layer_set_visible("Ui_game_over", 0);

	// Salva o saldo de moedas no arquivo INI
	ini_open("moedas_saldo.ini");
	global.moedas += global.moedas_da_partida; // Atualiza saldo total
	ini_write_real("saldo", "moedas", global.moedas);
	ini_close();

	// Zera as moedas da partida (após salvar)
	global.moedas_da_partida = 0;

	// Vai para a próxima partida
	room_goto(room_game);
};
