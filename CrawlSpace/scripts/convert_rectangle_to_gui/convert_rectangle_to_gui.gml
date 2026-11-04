/// @function convert_rectangle_to_gui
/// @description Returns gui coordinates from provided viewport coordinates of a rectangle
/// @param {Real} _x1 The coordinate of the left side of the rectangle to convert
/// @param {Real} _y1 The coordinate of the top of the rectangle to convert
/// @param {Real} _x2 The coordinate of the right side of the rectangle to convert
/// @param {Real} _y2 The coordinate of the bottom of the rectangle to convert
/// @returns {Array} An array struct defining the new rectangle


function convert_rectangle_to_gui(_x1, _y1, _x2, _y2){
	// Get camera ID and size
	var camera_id = view_camera[0]
	var camera_width = camera_get_view_width(camera_id)
	var camera_height = camera_get_view_height(camera_id)
	
	// Get gui width 
	var gui_width = display_get_gui_width()
	var gui_height = display_get_gui_height()
	
	// ratio for scaling gui/camera
	var ratio_x = gui_width / camera_width
	var ratio_y = gui_height / camera_height
	
	// use ratio to convert provided rectangle
	var _x1_ = _x1*ratio_x
	var _y1_ = _y1*ratio_y
	var _x2_ = _x2*ratio_x
	var _y2_ = _y2*ratio_y
	
	var gui_rectangle = [_x1_, _y1_, _x2_, _y2_]
	
	return(gui_rectangle)

}