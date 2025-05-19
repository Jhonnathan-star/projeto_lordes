if(!global.invencivel){
	if (!global.gameover_ja_tocou) {
    audio_play_sound(game_over, 1, false); // toca som uma vez
    global.gameover_ja_tocou = true;
}

// Mostra a tela de Game Over
layer_set_visible("Ui_game_over", true);

// Pausa o jogo
global.paused = true;

if (global.pontuacao > global.recorde) {
    global.recorde = global.pontuacao;

    ini_open("save.ini"); // abre ou cria o arquivo
    ini_write_real("Recordes", "MaiorPontuacao", global.recorde); // salva o valor
    ini_close(); // fecha o arquivo
}

}









