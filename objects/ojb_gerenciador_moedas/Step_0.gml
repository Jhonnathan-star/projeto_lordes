if (!global.paused) {
    tempo_moeda--;

    if (tempo_moeda <= 0) {
        var pos_x = irandom_range(margem, room_width - margem);
        var pos_y = irandom_range(32, room_height - 32);
        
        instance_create_layer(pos_x, pos_y, "Instances", obj_moeda);

        tempo_moeda = irandom_range(room_speed* 2, room_speed * 5); // redefine o tempo
    }
}
