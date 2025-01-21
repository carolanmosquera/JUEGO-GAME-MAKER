// codigo ataque areo, se activa cuando el jugador esta en el aire y oprime abajo
function ScrPlayerAtqueAreo(){
	 // Verifica si está en el aire y se presionó la tecla 'abajo'
    if ((!collision_rectangle(x - width, y, x + width, y + 1, Object_solido, false, false) || vspeed != 0) && keyboard_check_pressed(ord("S"))) {
        state = "ataque_areo";
        keygravity = false;  // Desactiva la gravedad temporalmente
        vspeed = 0;          // Detener movimiento vertical
        hspeed = 0;          // Detener movimiento horizontal (si lo deseas)
        suspend_time = 0;     // Reiniciar el temporizador de suspensión
    }

    // Si está en el estado de ataque aéreo, mantener suspendido por un tiempo
    if (state == "ataque_areo") {
        if (suspend_time < max_suspend_time) {
            vspeed = 0; // Mantener suspendido (sin caer)
            suspend_time++;
        } else {
            // Después del tiempo de suspensión, restaurar la gravedad
            keygravity = true;
			stopFallAtack = true;
            state = "realizando_ataque_areo"; // Regresar al estado normal (o el que tengas)
        }
    }
}
