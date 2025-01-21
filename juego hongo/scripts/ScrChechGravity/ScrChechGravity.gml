//este es el codigo que activa la gravedad apenas el jugador esta saltando
//aqui es donde se realiza el cambio del sprite a saltosprite ya que solo se ejecuta cuando se esta saltando
function ScrChechGravity(width){
 // Si el personaje está en el aire y la gravedad está activa
    if ((!collision_rectangle(x - width, y, x + width, y + 1, Object_solido, false, false) || vspeed != 0) && keygravity == true) {
        gravity = 0.3;  // Aplicar gravedad
        action = "6_salto_medio10_completo";  // Cambiar a la acción de salto
    }
}