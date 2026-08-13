
// Handle mouse click

if ( mouse_check_button_pressed(mb_left) ) {
	
	// mouse position on click saved to variables
	gui_mouse_x = device_mouse_x_to_gui(0)
	gui_mouse_y = device_mouse_y_to_gui(0)

	show_debug_message( $"Mouse: {gui_mouse_x},{gui_mouse_y}" ) // shows correct when testing screen resizing
	
	// TODO: Does not adjust for screen size
	show_debug_message( $"bbox variables for left, top, right, bottom:  {bbox_left}, {bbox_top}, {bbox_right}, {bbox_bottom}" )
	
	// if the translated mouse coordinates match the button area coordinates, success message
	if ( point_in_rectangle(gui_mouse_x, gui_mouse_y, bbox_left, bbox_top, bbox_right, bbox_bottom) ){
		show_debug_message("Left button pressed!") 
	}
}

