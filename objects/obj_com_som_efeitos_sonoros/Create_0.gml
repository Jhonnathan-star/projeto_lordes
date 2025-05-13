event_inherited();

acao_botao = function()
{
    global.som_ativo = false;
    audio_sound_gain(click_button, 0, 0); // Zera o volume imediatamente
	audio_sound_gain(game_over, 0, 0); // Zera o volume imediatamente
	audio_sound_gain(som_moedas, 0, 0); // Zera o volume imediatamente
    instance_change(obj_sem_som_efeitos_sonoros, true); // Troca para o botão de "sem som"
}