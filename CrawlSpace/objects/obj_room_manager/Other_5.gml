// when room ends, set ui iD to global variable and set visibility to false
// keeps game from crashing when room resets

global.get_layer_id = layer_get_id("UILayer_controls")
layer_set_visible(global.get_layer_id, false)

