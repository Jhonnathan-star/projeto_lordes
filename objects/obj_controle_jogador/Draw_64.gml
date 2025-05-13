draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(x, y, texto);

// Se quiser desenhar um botão mais visível:
draw_set_color(c_white);
draw_rectangle(x - 10, y - 10, x + 180, y + 40, false);
