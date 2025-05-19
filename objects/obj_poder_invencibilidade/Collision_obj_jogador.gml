// Ativar o poder no jogador
with (other) {
    global.invencivel = true;
    sprite_index = spr_jogador_poder;
    
    // Timer de 10 segundos (600 frames)
    global.poder_tempo = 600;
}

// Destroi o power-up
instance_destroy();
