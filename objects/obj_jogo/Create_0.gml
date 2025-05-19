
layer_set_visible("Ui_opcoes", 0);
layer_set_visible("Ui_creditos", 0);
layer_set_visible("Ui_sair", 0);
layer_set_visible("Ui_game_over", 0);
layer_set_visible("Ui_pause", 0);
layer_set_visible("Ui_loja", 0);


if (!audio_is_playing(fundo_menu)) {
    audio_play_sound(fundo_menu, 1, true);
}
// Verificar se o arquivo INI existe
if (file_exists("moedas_saldo.ini")) {
    ini_open("moedas_saldo.ini"); // Abre o arquivo INI
    global.moedas = ini_read_real("saldo", "moedas", 0); // Carrega o valor das moedas (0 é o valor padrão caso não exista)
    ini_close(); // Fecha o arquivo INI
} else {
    global.moedas = 0; // Caso o arquivo INI não exista, define as moedas como 0
}

ini_open("config.ini");

var som_salvo = ini_read_string("som", "ativo", "sim"); // padrão = sim

if (som_salvo == "nao") {
    global.som_ativo = false;
    audio_sound_gain(fundo_menu, 0, 0);
    audio_sound_gain(som_fundo, 0, 0);
} else {
    global.som_ativo = true;
    audio_sound_gain(fundo_menu, 1, 0.5);
    audio_sound_gain(som_fundo, 1, 0.5);
}

ini_close();
