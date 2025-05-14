// Definir a fonte
draw_set_font(Font1);  // Substitua pelo nome da sua fonte

// Definir a cor do texto
draw_set_color(c_white);  // cor branca

// Exibir o saldo de moedas na tela
draw_text(50, 50, "Saldo: " + string(global.moedas)); // Altere as coordenadas (10, 10) para onde deseja exibir
