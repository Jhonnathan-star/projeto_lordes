draw_set_color(c_white);
draw_set_font(Font1);

var view_x = camera_get_view_x(view_camera[0]);
var view_y = camera_get_view_y(view_camera[0]);

// Desenha pontuação e recorde
draw_text(view_x + 350, view_y + 100, "Pontuação: " + string(global.pontuacao));
draw_text(view_x + 350, view_y + 50, "Recorde: " + string(global.recorde));

// Desenha moedas
draw_text(view_x + 58, view_y + 120, string(global.moedas_da_partida));

// Desenha barra de tempo se invencível
if (!global.paused && global.invencivel && variable_global_exists("poder_tempo_max")) {
    if (instance_exists(obj_jogador)) {
        var jogador = instance_find(obj_jogador, 0);

        var duracao_total = max(1, global.poder_tempo_max);
        var tempo_atual = clamp(global.poder_tempo, 0, duracao_total);
        var percent = tempo_atual / duracao_total;

        // Posição do jogador na tela da GUI
        var jogador_gui_x = jogador.x - view_x;
        var jogador_gui_y = jogador.y - view_y;

        // Posição e tamanho da barra
        var barra_largura = 100;
        var barra_altura = 10;
        var barra_x = jogador_gui_x - barra_largura / 2;
        var barra_y = jogador_gui_y - 90; // Acima da cabeça

        // Fundo da barra
        draw_set_color(c_black);
        draw_rectangle(barra_x, barra_y, barra_x + barra_largura, barra_y + barra_altura, false);

        // Parte preenchida
		var cor_barra;
		if (percent < 0.33) {
		    cor_barra = c_red;
		} else if (percent < 0.66) {
		    cor_barra = c_yellow;
	} else {
            cor_barra = c_lime;
}

draw_set_color(cor_barra);
draw_rectangle(barra_x, barra_y, barra_x + (barra_largura * percent), barra_y + barra_altura, false);
	}
}





