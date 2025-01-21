// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ScrEnemyPatrol(){
	if (wait <=0){
sprite_index= Sprite_enemigo_corriendo
image_xscale=dir;
ScrMovement(dir,1,width)


if (dir == 1 && x >= x2) {
	dir = -1;
	sprite_index=Sprite_enemigo_quieto
	wait = room_speed *1;
}else if (dir == -1 && x <= x1){
	dir = 1;
	sprite_index=Sprite_enemigo_quieto
	wait = room_speed *1;
}
}else {
	wait -=1;
}
}