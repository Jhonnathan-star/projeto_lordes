global.controle_tipo = "toque";

// Destroi o joystick se estiver ativo
with (obj_joystick) {
    instance_destroy();
}

// Cria o objeto de toque, se você tiver um. Se for só por posição, pode ignorar isso.
