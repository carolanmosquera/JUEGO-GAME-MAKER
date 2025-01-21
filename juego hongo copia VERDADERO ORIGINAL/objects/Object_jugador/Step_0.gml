 //el estado idel es el estado general, donde el jugador puede realizar y llamar a los otros estados
 //SrcPlayerMove NO ES LO MISMO a SrcMovement
 //ya que SrcMovement solo va a mover al jugador mientras SrcPlayerMove lo permita
switch (state) {
	case "idel":
	ScrPlayerMove();
	ScrPlayerSalt();
	ScrPlayerDash();
	ScrDano();
	ScrPlayerAtqueAreo();
	break;
//los estados utilizan a ScrMovement cuando van a mover al jugador 
//por un tiempo determinado y constante
//ya que ScrMovement es codigo que mueve al jugador
	case "dano":
	ScrMovement(sign(image_xscale),2,width)
	break;
	
	case"ataque_areo":
	ScrPlayerAtqueAreo();
	
	break;
	case "realizando_ataque_areo":
	ScrPlayerRealizandoAtauqeAreo(width);
	
	break;
	
	case "dash":
	ScrMovement(sign(image_xscale),5,width)
	
	break;
	
}
   