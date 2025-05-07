
layer_set_visible("Ui_opcoes", 0);
layer_set_visible("Ui_creditos", 0);
layer_set_visible("Ui_sair", 0);
layer_set_visible("Ui_game_over", 0);
layer_set_visible("Ui_pause", 0);

if (!audio_is_playing(fundo_menu)) {
    audio_play_sound(fundo_menu, 1, true);
}
