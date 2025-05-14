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

//Definir a área de controle
//var area_x1 = 150;
//var area_y1 = room_height div 6; 
//var area_x2 = room_width - 150;
//var area_y2 = room_height - 300;

// Área de atuação do joystick

//Detectar toque
//if (device_mouse_check_button(0, mb_left)) {
   // var toque_x = device_mouse_x_to_gui(0);
   // var toque_y = device_mouse_y_to_gui(0);

  //  if (toque_x > area_x1 && toque_x < area_x2 && toque_y > area_y1 && toque_y < area_y2) {
   //     x = lerp(x, toque_x, 0.2); 
	//	y = lerp(y,toque_y,0.2);
	// }
//}

// Limites da área de controle (iguais ao modo toque)
var area_x1 = 150;
var area_y1 = room_height div 6;
var area_x2 = room_width - 150;
var area_y2 = room_height - 300;

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

    // Ajusta a velocidade no eixo Y dependendo da direção
    var velocidade_y;
    if (dy < 0) {
        velocidade_y = dist * 0.1;  // Velocidade mais lenta para cima (dy < 0)
    } else {
        velocidade_y = dist * 0.3;  // Velocidade mais rápida para baixo (dy > 0)
    }

    // Move
    x += lengthdir_x(dist * 0.3, dir);  // Velocidade no eixo X
    y += lengthdir_y(velocidade_y, dir);  // Velocidade no eixo Y (ajustada)

    // ⛔ Limita o movimento à área permitida
    x = clamp(x, area_x1, area_x2);
    y = clamp(y, area_y1, area_y2);
}





