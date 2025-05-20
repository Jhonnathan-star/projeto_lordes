
event_inherited();
acao_botao = function()
{
    global.som_ativo = true;

    // Restaura o volume
    audio_sound_gain(fundo_menu, 1, 0.5);
    audio_sound_gain(som_fundo, 1, 0.5);
	audio_sound_gain(som_poder, 1, 0.5);

    // Troca o botão
    instance_change(obj_com_som, true);

    // Salva no ini
    ini_open("config.ini");
    ini_write_string("som", "ativo", "sim");
    ini_close();
}
