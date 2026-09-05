// clear touch controls when menu is active

touch_controls = layer_get_id("UILayer_controls")

if ( layer_exists(touch_controls) ) {
	if ( room == rm_menu ) layer_set_visible(touch_controls, false)
	if ( room != rm_menu ) layer_set_visible(touch_controls, true)
}