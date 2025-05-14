if (!global.paused) {
    tempo_moeda--;

    if (tempo_moeda <= 0) {
        // Gera posição aleatória dentro da área delimitada
        var pos_x = irandom_range(margem_x, room_width - margem_x);
        var pos_y = irandom_range(margem_y, room_height - margem_y);

        instance_create_layer(pos_x, pos_y, "Instances", obj_moeda);

        // Redefine o tempo de geração (mais rápido agora: 1x1 segundo)
        tempo_moeda = irandom_range(room_speed * 1, room_speed * 1);
    }
}
