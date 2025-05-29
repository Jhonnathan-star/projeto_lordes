event_inherited();

acao_botao = function () {
    // 1. Desmarca os outros botões (você coloca aqui todos os objetos dos outros botões manualmente)
    with (obj_vermelho1) {
        sprite_index = spr_vermelho1; // sprite "não selecionado"
    }
    with (obj_azul1) {
        sprite_index = spr_azul1;
    }
	    with (obj_verde1) {
        sprite_index = spr_verde1;
    }

    // 2. Marca o botão atual como selecionado
    sprite_index = spr_amarelo2;

    // 3. Salva o personagem selecionado
    ini_open("moedas_saldo.ini");
    ini_write_string("selecionado", "personagem", "personagem_amarelo");
    ini_close();

    // 4. Atualiza o sprite do jogador
    with (obj_jogador) {
        sprite_index = spr_jogador_oficial;
    }
};

