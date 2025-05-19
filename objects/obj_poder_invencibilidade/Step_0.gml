if (global.paused) {
    exit; // cancela a execução do Step
}

y += global.vel

if (y > room_height + sprite_height) {
    instance_destroy();
}