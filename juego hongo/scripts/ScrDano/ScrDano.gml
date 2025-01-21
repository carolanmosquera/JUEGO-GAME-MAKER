// este es el codigo de daño del jugador
//en el caso que llave cambie a false en el codigo de jugador en el evento de colicion con objeto ataque enemigo
//se cambia a estado de dano
//alarma 2 estable por cuanto tiempo se esta en el estado dano
function ScrDano(){
if (!llave) {
state = "dano"
audio_play_sound(SoundDanoJugador,0,false,1,0,random_range(0.8,1.2))
alarm[2] = room_speed/1.5;
}

 }