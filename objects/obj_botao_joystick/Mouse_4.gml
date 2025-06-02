// Toca o som de clique
audio_play_sound(click_button, 1, false);

// Define o controle como joystick
global.controle_tipo = "joystick";

// Salva no ini
ini_open("config.ini");
ini_write_string("controle", "tipo", "joystick");
ini_close();

// Cria o joystick somente se estiver na sala do jogo
if (room == room_game) {
    if (!instance_exists(obj_joystick)) {
        instance_create_layer(500, 1700, "Instances", obj_joystick);
    }
}
