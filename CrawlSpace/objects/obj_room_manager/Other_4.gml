// Pause functionality

pause_options = ["Resume", "Restart", "Quit"]
pause_index = 0

pause_length = array_length(pause_options)



// if room is starting first time, global variable will be undefined

if (global.get_layer_id != undefined) {
	// set visible here when room restarts
	layer_set_visible(global.get_layer_id, true)
}

title_layer = layer_get_id("UILayer_title")
layer_set_visible(title_layer, false)

pause_layer = layer_get_id("UILayer_paused")
layer_set_visible(pause_layer, false)

controls_layer = layer_get_id("UILayer_controls")
layer_set_visible(controls_layer, true)

about_layer = layer_get_id("UILayer_about")
layer_set_visible(about_layer, false)

control_info_layer = layer_get_id("UILayer_controls_info")
layer_set_visible(control_info_layer, false)


show_debug_message($"global reset variable value at room start: {global.reset_game_room}")
// check for game state, reset room if game has restarted
if ( global.reset_game_room ) {
	show_debug_message($"enter logic loop for resetting room")
	global.reset_game_room = false
	room_persistent = false
	room_restart()
} else {
	show_debug_message("room does not get reset")
//	room_persistent = true
}

