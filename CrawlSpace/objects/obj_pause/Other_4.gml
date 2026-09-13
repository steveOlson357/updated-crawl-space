// clear touch controls when menu is active

touch_controls = layer_get_id("UILayer_controls")

pause_layer = layer_get_id("UILayer_paused")
layer_set_visible(pause_layer, true)


if ( layer_exists(touch_controls) ) {
	if ( room == rm_pause ) layer_set_visible(touch_controls, false)
	if ( room != rm_pause ) layer_set_visible(touch_controls, true)
}

