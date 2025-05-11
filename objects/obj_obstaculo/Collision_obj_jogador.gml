if (!global.gameover_ja_tocou) {
    audio_play_sound(game_over, 1, false); // toca som uma vez
    global.gameover_ja_tocou = true;
}

// Pausa o jogo
global.paused = true;

// Mostra a tela de Game Over
layer_set_visible("Ui_game_over", true);


