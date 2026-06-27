// if room is starting first time, global variable will be undefined

if (global.get_layer_id != undefined) {
	// set visible here when room restarts
	layer_set_visible(global.get_layer_id, true)
}