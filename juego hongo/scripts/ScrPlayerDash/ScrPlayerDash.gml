//este es el codigo de ataque del jugador que cambia a estado dash (activa el movimiento) 
//cuando el jugador oprime (X) 
//las variables xp y yp son las que guardan la posicion x e y del jugador
function ScrPlayerDash(){
 if (keyboard_check_pressed(ord("X"))){
	 state = "dash";
	var xp = Object_jugador.x
	 var yp = Object_jugador.y
//aqui es donde se crea el objeto de rango del ataque del jugador el cual es quien hace el daño
//alarma 0 determina cuanto tiempo dura estado de ataque 
	 instance_create_layer(xp,yp, "Instances_3", Object_ataque)
	 audio_play_sound(SoundAtaqueJugador,0,false,1,0,random_range(0.8,1.2))
	 Object_ataque.image_xscale= image_xscale
	
	 alarm[0] = room_speed/1;
	 
 }
}