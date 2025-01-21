// este es el codigo de salto que hace que cuando se oprima la tecla espacio
//llame a la funcion SrcJump que es la que le brinda la velocidad vertical
//el cambio de sprite esta en SrcCheckGravity
function ScrPlayerSalt(){
if (keyboard_check_pressed(vk_space)) {
//aqui le esta transmitiendo width (el ancho del jugador) a ScrJump
	ScrJump(width)
	 
} 
}