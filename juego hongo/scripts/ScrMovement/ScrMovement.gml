//ScrMovement SIEMPRE va a mover al objeto segun su direccion hasta que el proceso sea interrumpido

//este es el codigo de movimiento para el jugador y otras criaturas
//hor que es una variable que chequea la direccion de la funcion (SrcPlayerMove)
//width es una variable que esta en create del objeto jugador y guarda el ancho del sprite
//xto esta guardando el movimiento horizontal del jugador al guardar la posicion x con la direccion y multiplicada por la velocidad
//la variable moved es la que verifica si hay movimiento o si no hay movimiento
//ya que cuando se crea es false 
//pero en el caso que el jugador no este colicionando con una pared (wall) es true
function ScrMovement(hor, width, spd){
	var xTo = x + hor * spd;
	var moved = false;
for (var i=1;i<4 ;i++){
	var wall = collision_rectangle(xTo-width,y-i-1, xTo+width, y-i,Object_solido, true, true);
	if (!wall or !wall.solid){
		x=xTo;
		moved = true;
		if (vspeed == 0) {
		y -= i-1;}
		break;
	}
	
}
//este es el codigo que permite subir rampas cuando la velocidad vertical es cero y moved es true (osea que no hay objeto solido adelante)
if (vspeed==0 && moved){
for (var i=1;i<4;i++){
	var wall = collision_rectangle(xTo-width, y+i-1, xTo + width, y+i, Object_Rampa, true, true);
	if (wall){
		y += i;
		break;
	}
	}
}
	image_xscale=hor;

}
