event_inherited();

acao_botao = function () {
    // Define o controle como joystick
    global.controle_tipo = "joystick";

    // Atualiza sprite do botão joystick (selecionado)
    sprite_index = spr_selecion_joy;

    // Atualiza sprite do botão toque (não selecionado), se existir
    if (instance_exists(obj_por_toque)) {
        with (obj_por_toque) {
            sprite_index = spr_toque;
        }
    }

    // Salva no arquivo INI
    ini_open("config.ini");
    ini_write_string("controle", "tipo", "joystick");
    ini_close();
	
    // Cria o joystick se estiver na sala do jogo e se ainda não existir
    if (room == room_game) {
        if (!instance_exists(obj_joystick)) {
            instance_create_layer(500, 1700, "Instances", obj_joystick);
        }
    }
};


