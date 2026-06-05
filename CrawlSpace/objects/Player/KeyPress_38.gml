/// @description Jump

// Reset counter if on solid surface
if(place_meeting(x, y + 2, interacts_with)) {
	player_attributes.jump_counter = 0;
}

// add to counter to allow only double jumps
if (player_attributes.jump_counter <= 1) {
	// show_debug_message("Jump counter: " + string(jump_counter));
	player_attributes.move_y = -(player_attributes.jump) ;
	player_attributes.jump_counter++;
	// show_debug_message("jump counter incremented: " + string(jump_counter));
}


