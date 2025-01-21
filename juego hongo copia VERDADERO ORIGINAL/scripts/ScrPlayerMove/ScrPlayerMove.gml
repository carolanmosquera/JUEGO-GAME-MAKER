// este es el codigo de verificacion de direccion para el jugador y otras criaturas
function ScrPlayerMove(){
//la variable hor guarda valores positivos y negativos cuando se presionan la tecla izquierda y derecha
//positivo significa que va a la derecha y negativo a la izquierda
var hor = keyboard_check(vk_right) - keyboard_check(vk_left);
if (hor !=0) {
	ScrMovement(sign(hor), width, 8);
//action es el primer nombre de los sprites y se utiliza en SrcUpdateSprite para cambiar de sprite segun su nombre
	action = "8_corriendo" 
}else if(vspeed ==0) {
	action = "9_quieto"
}
}