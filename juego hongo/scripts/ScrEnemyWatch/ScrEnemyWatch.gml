// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ScrEnemyWatch(){
	var dx = Object_jugador.x-x;
	var dy= Object_jugador.y-y;
	
	if (sign(dx) == image_xscale) && abs(dx) <= 130 && abs(dy) <= 96 {
		state = "chase"
	}
}