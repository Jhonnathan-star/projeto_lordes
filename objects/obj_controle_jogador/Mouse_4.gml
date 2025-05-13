// Alterna entre toque e joystick
if (modo_atual == "toque") {
    modo_atual = "joystick";
    texto = "Controle: Joystick";
} else {
    modo_atual = "toque";
    texto = "Controle: Toque";
}

// Atualiza o jogador
obj_jogador.modo_controle = modo_atual;
