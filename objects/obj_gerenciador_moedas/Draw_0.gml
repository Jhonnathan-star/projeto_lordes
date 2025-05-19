// Apenas desenha se o jogo não estiver pausado


/*if (!global.paused) {
    var x1 = margem_x;
    var y1 = margem_y;
    var x2 = room_width - margem_x;
    var y2 = 300;
	
   draw_set_color(c_lime);
    draw_set_alpha(0.3);
    draw_rectangle(x1,y1, x2, y2, false); // false = não preenchido, true = preenchido
    draw_set_alpha(1); // Resetar a opacidade
}
