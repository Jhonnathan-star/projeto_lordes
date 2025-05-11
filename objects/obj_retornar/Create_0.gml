// Herda o evento de botão base
event_inherited();

// Função de ação do botão Retomar
acao_botao = function() {
    global.paused = false;  // Despausa o jogo
    layer_set_visible("Ui_pause", 0);  // Oculta a UI da tela de pausa
    
};
