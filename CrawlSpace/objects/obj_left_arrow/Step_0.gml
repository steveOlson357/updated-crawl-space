
// Handle mouse click

if ( mouse_check_button_pressed(mb_left) ) {
	
	// mouse position on click saved to variables
	gui_mouse_x = device_mouse_x_to_gui(0)
	gui_mouse_y = device_mouse_y_to_gui(0)
	
	// get camera position and size
	camera_id = view_camera[0]
	camera_x = camera_get_view_x(camera_id)
	camera_y = camera_get_view_y(camera_id)
	camera_width = camera_get_view_width(camera_id)
	camera_height = camera_get_view_height(camera_id)
	
	// get gui width and calculate ratios for scaling
	gui_width = display_get_gui_width()
	gui_height = display_get_gui_height()
	
	// divide by camera width and height to get ratio for scaling
	ratio_x = gui_width / camera_width
	ratio_y = gui_height / camera_height
	
	btn_left = bbox_left 
	btn_right = bbox_right 
	btn_top = bbox_top
	btn_bottom = bbox_bottom

	// Verify mouse coordinates
	show_debug_message( $"Mouse: {gui_mouse_x},{gui_mouse_y}" ) // shows correct when testing screen resizing
	
	// verify camera coordinates
	show_debug_message( $"camera position: {camera_x}, {camera_y}" )// correct when moving as well
	
	// verify gui width 
	show_debug_message( $"GUI w/h and ratios: {gui_width}, {gui_height}. width ratio is {ratio_x} height is {ratio_y}" )
	
	// if the translated mouse coordinates match the button area coordinates, success message
	if ( point_in_rectangle(gui_mouse_x, gui_mouse_y, bbox_left, bbox_top, bbox_right, bbox_bottom) ){
		show_debug_message("Left button pressed!") 
	}
}

