acao_botao = function () {
	
	layer_set_visible("Ui_confirmacion", 0);
	layer_set_visible("Ui_loja", 1);
	
    if (!instance_exists(global.personagem_em_confirmacao)) exit;
	
    // Debita o valor do personagem escolhido
    global.moedas -= global.personagem_preco;

    ini_open("moedas_saldo.ini");
    ini_write_real("saldo", "moedas", global.moedas);
    ini_write_string("compras", global.personagem_nome, "sim");
    ini_write_string("selecionado", "personagem", global.personagem_nome);
    ini_close();

    with (global.personagem_em_confirmacao) {
        sprite_index = global.personagem_sprite_botao;
    }

    with (obj_jogador) {
        sprite_index = global.personagem_sprite_jogador;
    }

	// 🔁 Destrói o valor correto baseado no personagem
	if (global.personagem_nome == "personagem1" && instance_exists(obj_valor_15)) {
	    with (obj_valor_15) instance_destroy();
}
	else if (global.personagem_nome == "personagem2" && instance_exists(obj_valor_30)) {
	    with (obj_valor_30) instance_destroy();
}
	else if (global.personagem_nome == "personagem3" && instance_exists(obj_valor_50)) {
	    with (obj_valor_50) instance_destroy();
}
	
};
