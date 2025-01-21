function ScrCheckGroundCollision(width) {
    // Crear lista para detectar colisiones
    var list = ds_list_create();
    var collisions = collision_rectangle_list(x - width, y, x + width, y + vspeed, Object_solido, true, true, list, true);

    // Seleccionar la colisión más relevante
    var ground = noone;
    if (collisions > 0) {
        for (var i = 0; i < ds_list_size(list); i++) {
            var obj = list[| i];
            if (ground == noone || obj.y < ground.y) {
                ground = obj;
            }
        }
    }
    ds_list_destroy(list);

    // Si hay colisión con el suelo
    if (ground != noone) {
        if (ground.oneSided == true) {
            // Manejo de plataformas atravesables
            if (vspeed > 0 && y + vspeed >= ground.y) {
                y = ground.y;
                vspeed = 0;
                gravity = 0;

                // Llamar aquí a ScrHandlePlatformDescend para garantizar sincronización
                ScrHandlePlatformDescend(width);
            }
        } else {
            // Manejo de sólidos no atravesables
            if (vspeed > 0 && y + vspeed >= ground.y) {
                y = ground.y;
                vspeed = 0;
                gravity = 0;
            }
        }
    }
}