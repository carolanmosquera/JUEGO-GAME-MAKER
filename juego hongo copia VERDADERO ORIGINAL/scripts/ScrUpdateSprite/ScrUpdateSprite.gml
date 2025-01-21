//este es el codigo que se encarga de cambiar los sprites segun el cambio de estado 
//cada cambio de estado es una accion
//te permite llamar el nombre identificador de todos los sprites que tengan la misma nomnenclatura
//la nomenclatura es tener Sprite primero y luego el nombre diferenciador
function ScrUpdateSprite(){
	switch (state){
		case "idel":
		sprite_index = asset_get_index("Sprite" + action)
		break;
		
	   case "dash":
	   sprite_index=Sprite_jugadpr_atacando
	   break;
	   
	   case "dano":
	   sprite_index=Sprite_jugador_dano
	   break;
	   
	   case "ataque_areo":
	   sprite_index=Sprite30_ataque_areo
	   break;
	   
	   case "realizando_ataque_areo":
	   sprite_index=Sprite31_realizando_ataque_areo
	   break;
	}
}