event_inherited(); 
acao_botao = function()
{
    audio_stop_sound(fundo_menu);
	layer_set_visible("Ui_fim_de_jogo", 0);
	layer_set_visible("Ui_game_over", 0);
	layer_set_visible("Ui_sair", 0);
	layer_set_visible("Ui_creditos", 0);
	layer_set_visible("Ui_opcoes", 0);
	layer_set_visible("Ui_menu", 0);
    room_goto(room_game); // Troca de sala limpa todas as instâncias automaticamente
};
