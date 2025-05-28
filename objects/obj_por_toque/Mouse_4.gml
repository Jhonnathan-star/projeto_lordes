acao_botao = function () {
    // Define o controle como toque
    global.controle_tipo = "toque";

    // Toca o som de clique
    audio_play_sound(click_button, 1, false);

    // Salva no ini
    ini_open("config.ini");
    ini_write_string("controle", "tipo", "toque");
    ini_close();

    // Destroi o joystick se estiver ativo
    with (obj_joystick) {
        instance_destroy();
    }
};
