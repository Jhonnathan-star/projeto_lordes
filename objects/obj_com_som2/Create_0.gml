event_inherited();

acao_botao = function()
{
    global.som_ativo = false;
    audio_sound_gain(som_fundo, 0, 0); // Zera o volume imediatamente
    instance_change(obj_sem_som2, true); // Troca para o botão de "sem som"
}