if (global.paused) {
    image_speed = 0; // Pausa a animação
    exit;
} else {
    image_speed = 1; // Ou o valor padrão da animação do jogador
}

if (global.paused) {
    exit; // cancela a execução do Step
}

tempo += 10;

if (tempo mod 60 == 0) {
    global.pontuacao += 1;  // Aumenta a pontuação a cada segundo
}

if( global.pontuacao > global.dificuldade * 100){
	global.vel++;
	global.dificuldade++;
}


// Limites da área de controle (toque)
var area_x1 = 150;
var area_y1 = room_height div 6;
var area_x2 = room_width - 150;
var area_y2 = room_height - 100;

// Limites da área de controle (joy)
var jarea_x1 = 150;
var jarea_y1 = room_height div 6;
var jarea_x2 = room_width - 150;
var jarea_y2 = room_height - 450;

if (global.controle_tipo == "toque") {
    if (device_mouse_check_button(0, mb_left)) {
        var toque_x = device_mouse_x_to_gui(0);
        var toque_y = device_mouse_y_to_gui(0);

        if (toque_x > area_x1 && toque_x < area_x2 && toque_y > area_y1 && toque_y < area_y2) {
            x = lerp(x, toque_x, 0.2); 
            y = lerp(y, toque_y, 0.2);
        }
    }

} else if (global.controle_tipo == "joystick" && instance_exists(obj_joystick)) {
    var dx = obj_joystick.stick_x - obj_joystick.center_x;
    var dy = obj_joystick.stick_y - obj_joystick.center_y;

    var dir = point_direction(0, 0, dx, dy);
    var dist = point_distance(0, 0, dx, dy);

    var intensidade = clamp(dist / obj_joystick.radius, 0, 1);
    var velocidade_base = intensidade * intensidade * 80;

    // Direções separadas
    var velocidade_x = velocidade_base;
    var velocidade_y;

    if (dy < 0) {
        // Indo para cima → mais lento
        velocidade_y = velocidade_base * 0.5;
    } else {
        // Indo para baixo → mais rápido
        velocidade_y = velocidade_base * 1.4;
    }

    var alvo_x = x + lengthdir_x(velocidade_x, dir);
    var alvo_y = y + lengthdir_y(velocidade_y, dir);

    x = lerp(x, alvo_x, 0.2);
    y = lerp(y, alvo_y, 0.2);

    x = clamp(x, jarea_x1, jarea_x2);
    y = clamp(y, jarea_y1, jarea_y2);
}


// Contador do tempo de invencibilidade
if (global.invencivel) {
    global.poder_tempo -= 1;

    // Muda sprite nos últimos 3 segundos
    if (global.poder_tempo <= 90 && global.poder_tempo > 0) {
        sprite_index = spr_jogador_poder_acabando;
    }

    // Acabou o tempo
    if (global.poder_tempo <= 0) {
        global.invencivel = false;
        sprite_index = spr_jogador_oficial; // sprite original
    }
}





