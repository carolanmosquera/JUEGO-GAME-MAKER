// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ScrPlayerRealizandoAtauqeAreo(width){
	  if (stopFallAtack ) {
        // Mantener el estado del ataque aéreo en la caída
        state = "realizando_ataque_areo";
        keygravity = true; // Asegurar que la gravedad esté activada para que caiga
		var xp = Object_jugador.x
	     var yp = Object_jugador.y
		instance_create_layer(xp,yp, "Instances_3", Object_ataque_areo)

        // Verificar si el jugador está en el aire o ha tocado el suelo
        if (collision_rectangle(x - width, y, x + width, y + 1, Object_solido, false, false) || vspeed == 0) {
            // Si detecta colisión con el suelo, detener el ataque aéreo
            stopFallAtack = false;  // Detener el ataque aéreo al tocar el suelo
            hspeed = 0;             // Detener cualquier movimiento horizontal si es necesario
            vspeed = 0; // Detener el movimiento vertical
			alarm[3]=room_speed/2;
                 
             
        }
    }
}