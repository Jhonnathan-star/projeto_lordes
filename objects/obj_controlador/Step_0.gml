if (global.controle_tipo == "joystick" && !instance_exists(obj_joystick)) {
    instance_create_layer(0, 0, "GUI", obj_joystick);
}
if (global.controle_tipo == "toque" && instance_exists(obj_joystick)) {
    instance_destroy(obj_joystick);
}
