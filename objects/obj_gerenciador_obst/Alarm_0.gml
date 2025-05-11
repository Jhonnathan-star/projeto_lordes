// Evento Alarm[0] de obj_obstacle_manager

if (global.paused) {
    // Espera 1 frame e tenta novamente
    alarm[0] = 1;
    exit;
}

// Contar quantos obstáculos estão na tela
var current_obstacles = instance_number(obj_obstaculo);

// Verificar se o número de obstáculos é menor que o máximo permitido
if (current_obstacles < max_obstacles) {
    var obstacle_sprites = [spr_cone, spr_obst_buraco, spr_policia, spr_obst_torcedor];
    var sprite_choice = irandom(array_length(obstacle_sprites) - 1);
    var selected_sprite = obstacle_sprites[sprite_choice];

    var spawn_area_left = 250;
    var spawn_area_right = room_width - 250 - sprite_width;

    var spawn_x = random_range(spawn_area_left, spawn_area_right);
    var spawn_y = -sprite_height - 500;

    var new_obstacle = instance_create_layer(spawn_x, spawn_y, "Instances", obj_obstaculo);
    new_obstacle.sprite_index = selected_sprite;
}

// Redefine o alarme
alarm[0] = spawn_interval;
