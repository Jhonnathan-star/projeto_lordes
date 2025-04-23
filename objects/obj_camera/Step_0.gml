// Definir a posição da câmera para seguir o jogador
var player = obj_jogador; // Nome do objeto do jogador
var camera_x = player.x - (view_width / 2);
var camera_y = player.y - (view_height / 2);

// A câmera segue o jogador, mas evita ultrapassar os limites do cenário
camera_x = clamp(camera_x, 0, room_width - view_width);
camera_y = clamp(camera_y, 0, room_height - view_height);

// Atualiza a posição da câmera
view_xview[0] = camera_x;
view_yview[0] = camera_y;
