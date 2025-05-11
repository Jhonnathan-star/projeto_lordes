if (global.paused) {
    exit; // cancela a execução do Step
}
// Movimento do fundo
y += global.vel;

// Arredonda a posição para evitar "gaps" visuais causados por subpixels
y = round(y);

// Reposiciona o fundo no topo quando sair da tela (ajustado para evitar falhas com velocidade alta)
if (y >= room_height) {
    y = -sprite_height + (y - room_height);
}

// Troca o sprite do campo quando a pontuação atinge 500
if (global.pontuacao >= 500) {
    sprite_index = spr_fase2;
}
