// Menu navigation

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

// selection handler
if ( menu_select ) {
	switch(index) {
		case 0: // Start
			layer_set_visible(title_layer, false)
			room_goto(rm_single_view)
			scr_soft_restart(rm_single_view) // keeps room fresh after quitting from pause menu
			break
		
		case 1: // About
			// About page
			show_debug_message("About Page Called")
			break
			
		case 2: // Controls
			// Controls page
			show_debug_message("Controls Page Called")
			break
	}
}