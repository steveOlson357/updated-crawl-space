// if room is starting first time, global variable will be undefined

if (global.get_layer_id != undefined) {
	// set visible here when room restarts
	layer_set_visible(global.get_layer_id, true)
}


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

