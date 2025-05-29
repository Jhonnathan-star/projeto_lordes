event_inherited();

acao_botao = function () {
    audio_play_sound(click_button, 1, false);

    // Preço específico deste personagem
    var preco_personagem = 50;

    // Desmarcar os outros botões
    with (obj_amarelo1) sprite_index = spr_amarelo1;
    with (obj_azul1) sprite_index = spr_azul1;
    with (obj_vermelho1) sprite_index = spr_vermelho1;

    // Dados globais para uso posterior no botão "Sim"
    global.personagem_em_confirmacao = id;
    global.personagem_nome = "personagem3";
    global.personagem_sprite_botao = spr_verde2;
    global.personagem_sprite_jogador = spr_jogador_verde;
    global.personagem_preco = preco_personagem;

    ini_open("moedas_saldo.ini");
    var comprado = ini_read_string("compras", global.personagem_nome, "nao");
    ini_close();

    if (comprado == "sim") {
        sprite_index = global.personagem_sprite_botao;

        ini_open("moedas_saldo.ini");
        ini_write_string("selecionado", "personagem", global.personagem_nome);
        ini_close();

        with (obj_jogador) {
            sprite_index = global.personagem_sprite_jogador;
        }
    } else if (global.moedas >= preco_personagem) {
		layer_set_visible("Ui_loja", 0);
        layer_set_visible("Ui_confirmacion", 1);
		
    } else {
        instance_create_layer(x, y - 100, layer, obj_msg_saldo_insuficiente);
    }
};
