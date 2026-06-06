if (browser_width != last_browser_width || browser_height != last_browser_height) {
	last_browser_width = browser_width;
	last_browser_height = browser_height;
	
	scr_scale_canvas_aspect();
}