// este es el codigo de ataque del enemigo larry
function ScrEnemyAtauque(){
	state =  "ataque"
sprite_index=Sprite_enemigo_atacando;
audio_play_sound(SoundAAAAAAAA,0,false,1,0,random_range(0.8,1.2))
instance_create_layer(x,y,"Instances_3",Object_ataque_enemigo)
	 Object_ataque_enemigo.image_xscale= image_xscale
	 alarm[1] = room_speed/1;
}