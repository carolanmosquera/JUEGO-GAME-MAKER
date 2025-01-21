
ScrChechGravity(width) 


//el movimiento vertical entre mas positivo mas rapido esta callendo hacia abajo
//aqui es donde se cambia al spritecallendo
if (vspeed>0) {
	action = "11_callendo"
	ScrCheckGroundCollision(width)

//aqui es donde se comiensa a chequear si hay un objeto arriba cuando el jugador esta saltando o subiendo
} else if (vspeed<0) {
ScrCheckCeillingCollision(width,height)


}else if (vspeed==0){
	ScrHandlePlatformDescend(width);
	
}	


//este es el metodo que actualiza los sprites
ScrUpdateSprite()
