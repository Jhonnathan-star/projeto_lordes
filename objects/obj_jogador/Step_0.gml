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

if (obj_joystick.active) {
    // Direção do movimento a partir do joystick
    var dir = point_direction(obj_joystick.center_x, obj_joystick.center_y, obj_joystick.stick_x, obj_joystick.stick_y);
    
    // Distância que a alavanca foi arrastada, em relação ao raio total
    var dist = point_distance(obj_joystick.center_x, obj_joystick.center_y, obj_joystick.stick_x, obj_joystick.stick_y);

    // A velocidade será proporcional à distância do centro do joystick
    var vel = (dist / obj_joystick.radius) * 12; // 10 é a velocidade máxima

    // Movimento do jogador
    x += lengthdir_x(vel, dir);
    y += lengthdir_y(vel, dir);
}



