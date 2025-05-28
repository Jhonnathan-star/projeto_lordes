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
	 if (global.pontuacao >= 500) {
        global.level = 0;
        sprite_index = spr_fase3;
    } else if (global.pontuacao >= 250) {
        global.level = 1;
        sprite_index = spr_fase2;
    } else {
        global.level = 0;
        sprite_index = spr_campo01;
    }
}

// Troca o sprite do campo quando a pontuação atinge 500

