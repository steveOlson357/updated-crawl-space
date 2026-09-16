/// @description Init pause functionality
global.is_paused = true

pause_options = ["Resume", "Restart", "Quit To Menu"]
pause_index = 0

pause_length = array_length(pause_options)

function unpause() { 
	global.is_paused = !global.is_paused	
	if ( !global.is_paused )  room_goto(rm_single_view)
	pause_layer = layer_get_id("UILayer_paused")
	layer_set_visible(pause_layer, false)
}

