
event_inherited();
acao_botao = function() {
    global.som_ativo = true;
    audio_sound_gain(som_fundo, 1, 500); // aumenta até volume 1 em 0,5s
    instance_change(obj_com_som2, true); // Troca para o botão de "som"
};
