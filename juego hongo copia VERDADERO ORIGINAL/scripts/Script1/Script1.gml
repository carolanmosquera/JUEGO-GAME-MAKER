// este es el codigo que hace que la camara siga al jugador por el mapa
function Script1(){
var _aspect_view = view_get_hport(viewport_index)/view_get_wport(viewport_index),
   _aspet_cam = view_height/view_height;
  
  if (_aspect_view > _aspect_cam)
  {
	  var _excess = view_height * (_aspect_view/_aspect_cam - 1)
	  height = view_height + _excess
	  width = view_width 
	  
  }
  else 
  {
	  var _excess = view_width * (_aspect_cam/_aspect_view - 1)
	  width = view_width + _excess
	  height = view_height
  }
  zoom_max = min(min(room_width/width, room_height/height), VIEW_ZOOM_MAX)
}