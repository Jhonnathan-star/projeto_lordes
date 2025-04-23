// Faz o fundo se mover com o jogador
x -= player.speed; // Onde 'speed' é a velocidade do jogador, ou algum valor de movimento

// Cria a repetição do fundo
if (x <= -sprite_width) {
    x = 0; // Reinicia a posição do fundo quando ele sai da tela
}
