/// @description Set up menu

// shared by draw event and step event
gap = 250


// get layers for menu options
_about = layer_get_id("UILayer_about")
_controls = layer_get_id("UILayer_controls_info")
//_labels = layer_get_id("Tiles_Info")

// options
menu[0] = "Start Game"
menu[1] = "About"
menu[2] = "Controls"

menu_length = array_length(menu)
index = 0 // current item


touch_pause = layer_get_id("UILayer_touch_pause")
touch_controls = layer_get_id("UILayer_controls")

if ( layer_exists(touch_controls) ) {
	if ( room == rm_menu ) {
		layer_set_visible(touch_controls, false)
	}
	else { layer_set_visible(touch_controls, true) }
}


if ( layer_exists(touch_pause) ) {
	
	if ( room == rm_menu ) { 
		layer_set_visible(touch_pause, false)  
		}
	else { layer_set_visible(touch_pause, true)  }
}

title_layer = layer_get_id("UILayer_title")
layer_set_visible(title_layer, true)


global.is_paused = false