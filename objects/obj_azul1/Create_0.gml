event_inherited();

acao_botao = function () {
    var preco_personagem = 30; // Valor da compra

    // Toca o som de clique
    audio_play_sound(click_button, 1, false);

    // Verifica se já foi comprado
    ini_open("moedas_saldo.ini");
    var comprado = ini_read_string("compras", "personagem2", "nao");
    ini_close();

    if (comprado == "sim") {
        // Já comprado: só selecionar
        sprite_index = spr_azul2;
        ini_open("moedas_saldo.ini");
        ini_write_string("selecionado", "personagem", "personagem2");
        ini_close();
        exit;
    }

    // Verifica se tem saldo suficiente
    if (global.moedas >= preco_personagem) {
        // Desconta e salva
        global.moedas -= preco_personagem;

        ini_open("moedas_saldo.ini");
        ini_write_real("saldo", "moedas", global.moedas);
        ini_write_string("compras", "personagem2", "sim");
        ini_write_string("selecionado", "personagem", "personagem2");
        ini_close();

        // Mostra "Comprado"
        instance_create_layer(x, y - 100, layer, obj_msg_comprado);

        // Atualiza sprite
        sprite_index = spr_azul2;

        // Destroi o sprite do valor, se ainda existir
        if (instance_exists(obj_valor_15)) {
            with (obj_valor_15) {
                instance_destroy();
            }
        }
    } else {
        // Sem saldo
        instance_create_layer(x, y - 100, layer, obj_msg_saldo_insuficiente);
    }
};
