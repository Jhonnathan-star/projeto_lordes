event_inherited(); 
acao_botao = function()
{
	layer_set_visible("Ui_loja", 0);
	global.jogador_sprite = spr_jogador_oficial;
    room_goto(room_game); // Troca de sala limpa todas as instâncias automaticamente
};