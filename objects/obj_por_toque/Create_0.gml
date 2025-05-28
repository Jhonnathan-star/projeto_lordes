event_inherited();

acao_botao = function () {
    // Define o controle como toque
    global.controle_tipo = "toque";

    // Toca o som de clique
    audio_play_sound(click_button, 1, false);

    // Atualiza sprite do botão toque (selecionado)
    sprite_index = spr_selecion_toque;

    // Atualiza sprite do botão joystick (não selecionado), se existir
    if (instance_exists(obj_botao_joystick)) {
        with (obj_botao_joystick) {
            sprite_index = spr_alavanca;
        }
    }

    // Salva no arquivo INI
    ini_open("config.ini");
    ini_write_string("controle", "tipo", "toque");
    ini_close();

    // Destroi o joystick se estiver ativo
    if (instance_exists(obj_joystick)) {
        with (obj_joystick) {
            instance_destroy();
        }
    }
};



