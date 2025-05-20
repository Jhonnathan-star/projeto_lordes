draw_set_color(c_white);
draw_set_font(Font1);

var view_x = camera_get_view_x(view_camera[0]);
var view_y = camera_get_view_y(view_camera[0]);

// Desenha pontuação e recorde
draw_text(view_x + 350, view_y + 100, "Pontuação: " + string(global.pontuacao));
draw_text(view_x + 350, view_y + 50, "Recorde: " + string(global.recorde));

// Desenha moedas
draw_text(view_x + 58, view_y + 120, string(global.moedas_da_partida));

// Se o jogador estiver invencível, mostra o sprite do relógio e o tempo
if (global.invencivel) {
    var tempo_restante = max(0, ceil(global.poder_tempo / room_speed)); // tempo em segundos

    // Posição base do sprite do relógio (onde será desenhado)
    var relogio_x = view_x + 550;
    var relogio_y = view_y + 500;

    // Desenha o sprite do relógio
    draw_sprite(spr_relogio, 0, relogio_x, relogio_y);

    // Calcula a posição real do canto superior esquerdo do sprite, considerando o origin
    var relogio_draw_x = relogio_x - sprite_get_xoffset(spr_relogio);
    var relogio_draw_y = relogio_y - sprite_get_yoffset(spr_relogio);

    // Calcula o centro e a base do sprite para desenhar o texto abaixo
    var centro_x = relogio_draw_x + sprite_get_width(spr_relogio) / 2;
    var base_y = relogio_draw_y + sprite_get_height(spr_relogio);

    // Desenha o tempo restante centralizado abaixo do sprite
    draw_set_halign(fa_center);
    draw_text(centro_x, base_y + 5, string(tempo_restante) + "s");
    draw_set_halign(fa_left); // volta ao padrão
}


