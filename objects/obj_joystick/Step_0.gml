
// Verifica se o botão do mouse (toque) está pressionado
if (mouse_check_button(mb_left)) {
    var mx = device_mouse_x(0);
    var my = device_mouse_y(0);

    // Se o toque estiver dentro do raio do joystick
    if (point_distance(center_x, center_y, mx, my) < radius) {
        active = true;
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


