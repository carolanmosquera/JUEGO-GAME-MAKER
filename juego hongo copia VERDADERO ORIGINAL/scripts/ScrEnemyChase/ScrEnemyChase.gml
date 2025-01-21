// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ScrEnemyChase(){
var dx = Object_jugador.x-x;
if (abs(dx) > 62) {
	var dir = sign(dx);
sprite_index= Sprite_enemigo_corriendo
image_xscale=dir;
ScrMovement(dir,1,width)
}else{
	sprite_index=Sprite_enemigo_quieto
	ScrEnemyAtauque()
}
}