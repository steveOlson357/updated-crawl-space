/// @description handle UI layer visibility

touch_controls = layer_get_id("UILayer_controls")
layer_set_visible(touch_controls, false)

pause_layer = layer_get_id("UILayer_paused")
layer_set_visible(pause_layer, true)

touch_pause = layer_get_id("UILayer_touch_pause")
layer_set_visible(touch_pause, false)

// get room paused from 
rm_return = global.active_room
