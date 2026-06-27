function scr_scale_canvas_aspect(){
	var browser_aspect = browser_width / browser_height;
	var game_aspect = base_width / base_height;
	
	var ideal_width = browser_width;
	var ideal_height = browser_height;
	
	// adjust based on limits
	
	// if browser aspect greater than game aspect
	if (browser_aspect > game_aspect) {
		// browser too wide, limit width
		ideal_width = round(browser_height * game_aspect)
	} else {
		// else, browser is too tall, limit height same way
		ideal_height = round(1.75 * (browser_width * game_aspect))
	}
	
	
	// resize canvas container inside browser with ideal w/h values
	window_set_size(ideal_width, ideal_height);
	
	// center (test to see if needed)
	window_center();
	
	// fit viewport and camera bounds
	view_wport[1] = ideal_width;
	view_hport[1] = ideal_height;
	
	camera_set_view_size(view_camera[1], base_width, base_height)
	
	// resize render surface to match new canvas layout
	// use application_surface, ideal w/h 
	surface_resize(application_surface, ideal_width, ideal_height)
	
	display_set_gui_size(base_width, base_height)
}