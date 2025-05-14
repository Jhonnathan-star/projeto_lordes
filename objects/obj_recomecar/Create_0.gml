// Primeiro, herda o comportamento do pai
event_inherited();

// Define a ação do botão de "Recomeçar"
acao_botao = function()
{
	layer_set_visible("Ui_pause", 0);
    room_goto(room_game); // Altere para a sala desejada
};
