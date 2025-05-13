
event_inherited();
acao_botao = function() {
    global.som_ativo = true;
    audio_sound_gain(click_button, 1, 1); 
	audio_sound_gain(game_over, 1, 1);// aumenta 
	audio_sound_gain(som_moedas, 1, 1);// aumenta
    instance_change(obj_com_som_efeitos_sonoros, true); // Troca para o botão de "som"
};
