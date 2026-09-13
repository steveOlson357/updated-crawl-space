// quick resume with esc key
if ( keyboard_check_pressed(vk_escape) ) unpause()
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

// selection handler
if ( pause_select ) {
	switch(pause_index) {
		case 0: // resume 
			unpause()
			break
			
		case 1: // Restart
			
			break
		
		case 2: // Quit
			game_restart()
			break
	}
}