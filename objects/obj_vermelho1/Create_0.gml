event_inherited();

acao_botao = function () {
    var preco_personagem = 15;

    audio_play_sound(click_button, 1, false);

    // 🔁 Desmarcar os outros botões manualmente (substitua pelos nomes reais)
    with (obj_amarelo1) sprite_index = spr_amarelo1;
    with (obj_azul1) sprite_index = spr_azul1;
    // Este botão (vermelho1) será marcado abaixo

    ini_open("moedas_saldo.ini");
    var comprado = ini_read_string("compras", "personagem1", "nao");
    ini_close();

    if (comprado == "sim") {
        sprite_index = spr_vermelho2;

        ini_open("moedas_saldo.ini");
        ini_write_string("selecionado", "personagem", "personagem1");
        ini_close();

        with (obj_jogador) {
            sprite_index = spr_jogador_vermelho;
        }

        exit;
    }

    if (global.moedas >= preco_personagem) {
        global.moedas -= preco_personagem;

        ini_open("moedas_saldo.ini");
        ini_write_real("saldo", "moedas", global.moedas);
        ini_write_string("compras", "personagem1", "sim");
        ini_write_string("selecionado", "personagem", "personagem1");
        ini_close();

        instance_create_layer(x, y - 100, layer, obj_msg_comprado);
        sprite_index = spr_vermelho2;

        if (instance_exists(obj_valor_15)) {
            with (obj_valor_15) instance_destroy();
        }

        with (obj_jogador) {
            sprite_index = spr_jogador_vermelho;
        }
    } else {
        instance_create_layer(x, y - 100, layer, obj_msg_saldo_insuficiente);
    }
};

