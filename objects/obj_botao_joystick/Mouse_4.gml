// Define o controle para joystick
global.controle_tipo = "joystick";


// Cria o joystick se ele ainda não existir
if (!instance_exists(obj_joystick)) {
    instance_create_layer(500, 1700, "Instances", obj_joystick); // use a layer correta da sua room
}
