if (global.paused) {
    image_speed = 0; // Pausa a animação
    exit;
} else {
    image_speed = 1; // Ou o valor padrão da animação do jogador
}

if (global.paused) {
    exit; // cancela a execução do Step
}

y += global.vel;  // Move o obstáculo para baixo

// Se o obstáculo sair da tela (passar pela parte inferior)
if (y > room_height) {
    instance_destroy();  // Destrói o obstáculo quando sair da tela
}