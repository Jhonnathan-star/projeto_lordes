event_inherited();

acao_botao = function()
{
	// Salva o saldo de moedas no arquivo INI
	ini_open("moedas_saldo.ini");
	ini_write_real("saldo", "moedas", global.moedas); // Salva o valor de global.moedas
	ini_close();

	layer_set_visible("Ui_game_over", 0);
	room_goto(room_game); // 
}