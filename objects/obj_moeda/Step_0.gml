if (global.paused) {
    exit; // cancela a execução do Step
}

// Movimento para baixo acompanhando o fundo
y += global.vel;// ou qualquer velocidade do seu fundo

// Destroi se sair da tela sem ser coletada
if (y > room_height + 32) {
    instance_destroy();
}
