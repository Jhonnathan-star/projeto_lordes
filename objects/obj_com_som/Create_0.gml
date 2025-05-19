event_inherited();

acao_botao = function()
{
    global.som_ativo = false;

    // Zera os volumes
    audio_sound_gain(fundo_menu, 0, 0);
    audio_sound_gain(som_fundo, 0, 0);

    // Troca o botão
    instance_change(obj_sem_som, true);

    // Salva no arquivo ini
    ini_open("config.ini");
    ini_write_string("som", "ativo", "nao");
    ini_close();
}
