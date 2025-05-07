event_inherited();

acao_botao = function()
{
	audio_play_sound(click_button, 1, false);
	layer_set_visible("Ui_sair", 0);
	layer_set_visible("Ui_creditos", 0);
	layer_set_visible("Ui_opcoes", 0);
	layer_set_visible("Ui_menu", 1);
}