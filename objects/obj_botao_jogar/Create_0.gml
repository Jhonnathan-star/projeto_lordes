event_inherited(); 
acao_botao = function()
{
    audio_stop_sound(fundo_menu);
	layer_set_visible("Ui_menu", 0);
    room_goto(room_game); // Troca de sala limpa todas as instâncias automaticamente
};
