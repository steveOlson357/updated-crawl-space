/// @description Handle menu nav
// quick resume with esc key
if ( keyboard_check_pressed(vk_escape) ) unpause(rm_return)
// map nav input and enable menu navigation
pause_up = keyboard_check_pressed(vk_up) || keyboard_check_pressed(vk_left)
pause_down = keyboard_check_pressed(vk_down) || keyboard_check_pressed(vk_right)
pause_select = keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space)

pause_move = pause_down - pause_up

// handle focus
if ( pause_move != 0 ) {
	pause_index += pause_move
	
	if ( pause_index < 0 ) pause_index = pause_length - 1
	if ( pause_index >= pause_length ) pause_index = 0
}

// Mouse / touch focus and selection

// get mouse coordinates
_mouse_x = device_mouse_x_to_gui(0)
_mouse_y = device_mouse_y_to_gui(0)

for ( i = 0; i < pause_length; i++ ) {
	
	// duplicate info from draw step
	_menu_x = (room_width / 2)
	_menu_y = ( (room_height / 2) + ( i* (gap) ) )
	
	_text_w = string_width(pause_options[i])
	_text_h = string_height(pause_options[i])
	
	// calculate box coordinates from text draw points
	// calculate box coordinates from text draw points
	_x1 = _menu_x - ( (_text_w / 2) - (_text_w % 2) )
	_y1 = _menu_y - (_text_h / 2)
	_x2 = _menu_x + (_text_w / 2) - (_text_w % 2)
	_y2 = _menu_y + (_text_h / 2)
	
	gui_rectangle = convert_rectangle_to_gui(_x1, _y1, _x2, _y2)
	
	// set original coordinate variables to corresponding return rectangle
	
	_x1 = gui_rectangle[0]
	_y1 = gui_rectangle[1]
	_x2 = gui_rectangle[2]
	_x3 = gui_rectangle[3]
	
	if ( point_in_rectangle(_mouse_x, _mouse_y, _x1, _y1, _x2, _y2) ) {
		// hover effect and check for click / tap
		
		pause_index = i 
		
		if ( device_mouse_check_button_pressed(0, mb_left) ) {
			// enable selection
			keyboard_key_press(vk_enter)
			keyboard_key_release(vk_enter)
		}
	}
}

// selection handler
if ( pause_select ) {
	switch(pause_index) {
		case 0: // Resume 
			unpause(rm_return)
			break
			
		case 1: // Restart
			scr_soft_restart(rm_return)
			break
		
		case 2: // Menu
			scr_reset_to_menu(rm_return)
			break
	}
}