// clear touch controls when menu is active
show_debug_message("menu room start event ran")
touch_controls = layer_get_id("UILayer_controls")

show_debug_message($"touch controls layer id: {touch_controls}")
if ( layer_exists(touch_controls) ) {
	
	show_debug_message($"touch controls layer found and if statement running in room: {room}. Room to run is {rm_menu}")
	if ( room == rm_menu ) { 
		layer_set_visible(touch_controls, false) 
		show_debug_message($"Menu room detected, hide touch controls") 
		}
	else { layer_set_visible(touch_controls, true) show_debug_message($"Menu room not detected, show touch controls") }
}