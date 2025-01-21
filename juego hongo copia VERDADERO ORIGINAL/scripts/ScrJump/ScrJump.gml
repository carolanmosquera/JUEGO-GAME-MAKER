// este es el codigo que transmite la velocidad y solo deja saltar solamente si el objeto jugadpr esta colicionando con piso
// y que la velocidad vertical este en cero
function ScrJump(width){
if (collision_rectangle(x-width,y,x+width,y+1,Object_solido,false,false) && vspeed==0 ){
	vspeed=-13;
}
}