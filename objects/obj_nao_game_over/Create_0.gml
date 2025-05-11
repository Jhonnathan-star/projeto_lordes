event_inherited();

acao_botao = function()
{
	layer_set_visible("Ui_game_over", 0);
	layer_set_visible("Ui_menu", 1);
	// Para a música do jogo
    audio_stop_sound(som_fundo);
	room_goto(Room1);
}