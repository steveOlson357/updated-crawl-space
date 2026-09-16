/// @description handle UI layer visibility

touch_controls = layer_get_id("UILayer_controls")

pause_layer = layer_get_id("UILayer_paused")
layer_set_visible(pause_layer, true)

touch_pause = layer_get_id("UILayer_touch_pause")
layer_set_visible(touch_pause, false)

