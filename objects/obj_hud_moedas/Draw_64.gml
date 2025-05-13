draw_set_color(c_white); 
draw_set_font(fnt_placar);


var view_x = camera_get_view_x(view_camera[0]);
var view_y = camera_get_view_y(view_camera[0]);

draw_text(view_x + 400, view_y + 100, "Moedas: " + string(global.moedas));

draw_set_alpha(0.5);
draw_set_color(c_black);
draw_set_alpha(1); 
