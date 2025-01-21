// este es el codigo que hace que te puedas chocar con objetos desde abajo o atravesarlos
//la variable ceiling es la colicion de un solido
function ScrCheckCeillingCollision(width,height){
	 // Detectar colisión con un objeto sólido en la dirección vertical
	var ceiling= collision_rectangle(x-width,y-height,x+width,y-height+vspeed,Object_solido,false,false);
	//oneSided es una variable que esta en todos los objetos solidos
	//si el objeto solido lo tiene como true, el personaje puede atravesar al objeto 
	//en el caso que no, el jugador se detiene en la colicion del objeto, su velocidad verticl se coloca en cero y comienza a caer
	//el sprite callendo esta en objeto jugador End Step
	if (ceiling && ceiling.oneSided==false) {
		y=ceiling.y + ceiling.sprite_height + height;
		vspeed=0;
	}
}          