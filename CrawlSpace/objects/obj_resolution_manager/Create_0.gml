base_width = 1300;
base_height = 1500;

// get active camera stats when room is created
camera_id = camera_get_active()
camera_width = camera_get_view_width(camera_id)
camera_height = camera_get_view_height(camera_id)

last_browser_width = 0;
last_browser_height = 0;