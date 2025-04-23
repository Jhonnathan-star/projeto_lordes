// Desenha o fundo várias vezes para criar o efeito de repetição
var fundo = sprite_index; // Assumindo que o fundo é o sprite do objeto
var largura_fundo = sprite_width; // Largura do fundo

// Desenha o fundo começando da posição correta
for (var i = 0; i < room_width / largura_fundo + 1; i++) {
    draw_sprite(fundo, 0, i * largura_fundo - (x mod largura_fundo), 0);
}
