/// @description Menu navigation

// get input for menu selection
menu_up = keyboard_check_pressed(vk_up) || keyboard_check_pressed(vk_left)
menu_down = keyboard_check_pressed(vk_down) || keyboard_check_pressed(vk_right)
menu_select = keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space) 

menu_move = menu_down - menu_up

// move through and enable loop
if ( menu_move != 0 ) {
	index += menu_move
	
	if (index < 0) index = menu_length - 1
	if ( index >= menu_length ) index = 0
}

/***************Needs close about and controls mechanism for tap/ mouse******************/

/********Enable Tap and Mouse Click**********/
_mouse_x = device_mouse_x_to_gui(0)
_mouse_y = device_mouse_y_to_gui(0)

// Loop menu options 
for ( i = 0; i < menu_length; i++; ) {
	// provide same coordinates as draw event
	_menu_x = (room_width / 2)
	_menu_y = ( (room_height / 2.25) + ( i* (gap) ) )
	// get option coordinates
	_text_w = string_width(menu[i])
	_text_h = string_height(menu[i]) 
	
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
		
		show_debug_message($"Point in rectangle acknowledged")
		index = i 
		
		if ( device_mouse_check_button_pressed(0, mb_left) ) {
			// enable selection
			keyboard_key_press(vk_enter)
			break
		}
	}
}


// selection handler
if ( menu_select ) {
	switch(index) {
		case 0: // Start Game
			layer_set_visible(title_layer, false)
			room_goto(rm_single_view)
			scr_soft_restart(rm_single_view) // keeps room fresh after quitting from pause menu
			scr_soft_restart(rm_single_view) 
			break
		
		case 1: // Show About, Hide Controls and on screen labels		
			_is_visible = layer_get_visible(_about)
			layer_set_visible(_about, !_is_visible)
			
			layer_set_visible(_controls, false)
			
			// if about is visible, set labels to not visible and vice versa
			_hide_labels = ( layer_get_visible(_about) == true ) ? false : true;
			layer_set_visible(_labels, _hide_labels)
			break
			
		case 2: // Show Controls, Hide About and on screen labels
			_ctrl_is_visible = layer_get_visible(_controls)
			layer_set_visible(_controls, !_ctrl_is_visible)
			layer_set_visible(_about, false)
			_hide_labels = ( layer_get_visible(_controls) == true ) ? false : true;
			layer_set_visible(_labels, _hide_labels)
			break
	}
}