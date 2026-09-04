// Menu navigation

// get input for menu selection
menu_up = keyboard_check_pressed(vk_up) || keyboard_check_pressed(vk_left)
menu_down = keyboard_check_pressed(vk_down) || keyboard_check_pressed(vk_right)

menu_move = menu_down - menu_up

// move through and enable loop
if ( menu_move != 0 ) {
	index += menu_move
	
	if (index < 0) index = menu_length - 1
	if ( index >= menu_length ) index = 0
}