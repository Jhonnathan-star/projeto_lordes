if (global.paused) {
    alarm[0] = 1;
    exit;
}

// Verifica o número atual de moedas na tela
var current_moedas = instance_number(obj_moeda);

if (current_moedas < max_moedas) {
    // Área de spawn horizontal
    var margem_x = 150;
    var spawn_x = random_range(margem_x, room_width - margem_x);

    // Faz a moeda nascer **fora da tela** (acima)
    var spawn_y = -32;

    instance_create_layer(spawn_x, spawn_y, "Instances", obj_moeda);
}

// Reativa o alarme
alarm[0] = spawn_interval;
