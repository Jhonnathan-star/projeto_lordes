event_inherited();

acao_botao = function () {
    var preco_personagem = 50;

    audio_play_sound(click_button, 1, false);

    // 🔁 Desmarcar os outros botões manualmente (substitua pelos nomes reais)
    with (obj_amarelo1) sprite_index = spr_amarelo1;
    with (obj_azul1) sprite_index = spr_azul1;
	 with (obj_vermelho1) sprite_index = spr_vermelho1;
 

    ini_open("moedas_saldo.ini");
    var comprado = ini_read_string("compras", "personagem3", "nao");
    ini_close();

    if (comprado == "sim") {
        sprite_index = spr_verde2;

        ini_open("moedas_saldo.ini");
        ini_write_string("selecionado", "personagem", "personagem3");
        ini_close();

        with (obj_jogador) {
            sprite_index = spr_jogador_verde;
        }

        exit;
    }

    if (global.moedas >= preco_personagem) {
        global.moedas -= preco_personagem;

        ini_open("moedas_saldo.ini");
        ini_write_real("saldo", "moedas", global.moedas);
        ini_write_string("compras", "personagem3", "sim");
        ini_write_string("selecionado", "personagem", "personagem3");
        ini_close();

        instance_create_layer(x, y - 100, layer, obj_msg_comprado);
        sprite_index = spr_verde2;

        if (instance_exists(obj_valor_50)) {
            with (obj_valor_50) instance_destroy();
        }

        with (obj_jogador) {
            sprite_index = spr_jogador_verde;
        }
    } else {
        instance_create_layer(x, y - 100, layer, obj_msg_saldo_insuficiente);
    }
};