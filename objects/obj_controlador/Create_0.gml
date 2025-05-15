global.paused = false;
//global.jogo_pausado = false;
// No objeto jogador (ou global), defina:
global.gameover_ja_tocou = false;

// Se existir uma config salva, usa ela
ini_open("config.ini");
if (ini_key_exists("controle", "tipo")) {
    global.controle_tipo = ini_read_string("controle", "tipo", "toque"); // padrão: toque
} else {
    global.controle_tipo = "toque"; // valor padrão
}
ini_close();

// Cria joystick se necessário
if (global.controle_tipo == "joystick" && !instance_exists(obj_joystick)) {
    instance_create_layer(500, 1700, "Instances", obj_joystick);
}


