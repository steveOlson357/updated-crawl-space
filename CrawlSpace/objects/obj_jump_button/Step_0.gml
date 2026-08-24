/******************************************************
**************jUMP BUTTON STEP EVENT*******************
******************************************************/


// allow multi touch input by looking for any possible (0-4) 'devices' assigned in order of activity



for ( var input_detected = 0; input_detected < 5; input_detected++ ) {
	
	var _id = input_detected
	
	// mouse position on click saved to variables
	gui_mouse_x = device_mouse_x_to_gui(_id)
	gui_mouse_y = device_mouse_y_to_gui(_id)
	
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
	
	// get base bbox data
	btn_left = bbox_left 
	btn_right = bbox_right 
	btn_top = bbox_top
	btn_bottom = bbox_bottom
	
	// convert to match gui with ratio
	
	gui_left = (btn_left) * ratio_x
	gui_right = (btn_right) * ratio_x
	gui_top =  (btn_top) * ratio_y
	gui_bottom = (btn_bottom) * ratio_y

	// when the input matches up with the adjsuted gui, virtually activate the keyboard input
	hover = point_in_rectangle(gui_mouse_x, gui_mouse_y, gui_left, gui_top, gui_right, gui_bottom) 
	
	if ( hover && device_mouse_check_button_pressed(_id, mb_left) ) {
		keyboard_key_press(vk_up)
		
	}
	keyboard_key_release(vk_up)
	
}