/// @description Init pause functionality
global.is_paused = true

// pause_options = ["Resume", "Restart", "Quit To Menu"]
pause_options[0] = "Resume"
pause_options[1] = "Restart"
pause_options[2] = "Quit To Menu"
pause_index = 0
gap = 175

pause_length = array_length(pause_options)

function unpause(_room_) { 
	global.is_paused = !global.is_paused	
	if ( !global.is_paused )  room_goto(_room_)
	pause_layer = layer_get_id("UILayer_paused")
	layer_set_visible(pause_layer, false)
}

