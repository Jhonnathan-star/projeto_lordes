
var margem_x = 150;

var powerup_x = random_range(margem_x, room_width - margem_x);
instance_create_layer(powerup_x, -sprite_height, "Instances", obj_poder_invencibilidade);

  


// Reinicia o alarme para o próximo
alarm[0] = room_speed * 60;
