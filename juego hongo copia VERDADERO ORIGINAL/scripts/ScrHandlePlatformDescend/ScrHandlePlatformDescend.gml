function ScrHandlePlatformDescend(width) {
    // Detectar si se está intentando descender
    if (keyboard_check(vk_down)) {
        // Detectar plataforma justo debajo del personaje
        var platform = collision_rectangle(x - width, y + 1, x + width, y + 2, Object_solido, true, true);

        if (platform != noone && platform.oneSided == true) {
            // Ajustar la posición para salir de la plataforma
            y += 4; // Aumenta la distancia para evitar quedar medio enterrado
           
        }
    }
}