// Posição fixa do centro do joystick
center_x = 500;
center_y = 1700;

// Estado inicial
stick_x = center_x;
stick_y = center_y;
radius = 60;
active = false;

// Área de atuação do joystick (opcionalmente usada para limitar controle do jogador)
area_x1 = 150;
area_y1 = room_height div 6;
area_x2 = room_width - 150;
area_y2 = room_height - 300;

// Sprites definidas (certifique-se que estão corretamente atribuídas no projeto)
spr_joystick_base = spr_anel_joy;
spr_joystick_stick = spr_alavanca_joy;
