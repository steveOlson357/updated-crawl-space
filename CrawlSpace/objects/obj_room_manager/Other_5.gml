/// @description Clean up
// when room ends, set ui iD to global variable and set visibility to false
// Room start event will bring up layer when room starts again.
/*******************************************
* CLEANUP CODE
* keeps game from crashing when room resets
* DON'T TOUCH!
********************************************/

global.get_layer_id = layer_get_id("UILayer_controls")
layer_set_visible(global.get_layer_id, false)

global.get_pause_layer_id = layer_get_id("UILayer_touch_pause")
layer_set_visible(global.get_pause_layer_id, false)



