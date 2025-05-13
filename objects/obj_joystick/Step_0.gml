// Suporte a toque e mouse
if (device_mouse_check_button(0, mb_left)) {
    var mx = device_mouse_x_to_gui(0);
    var my = device_mouse_y_to_gui(0);
    
    if (!active) {
        // Ativar só se o toque começar dentro do raio
        if (point_distance(center_x, center_y, mx, my) < radius) {
            active = true;
        }
    }

    if (active) {
        var dir = point_direction(center_x, center_y, mx, my);
        var dist = min(radius, point_distance(center_x, center_y, mx, my));
        stick_x = center_x + lengthdir_x(dist, dir);
        stick_y = center_y + lengthdir_y(dist, dir);
    }
} else {
    active = false;
    stick_x = center_x;
    stick_y = center_y;
}
