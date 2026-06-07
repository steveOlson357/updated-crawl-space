function scr_player_jump(){
	
		// Reset jump counter if on solid surface
	if(place_meeting(x, y + 2, PlatformTileCollisions)) {
		player_attributes.jump_counter = 0;
	}	
	
	if (player_attributes.jump_counter <= 1) {
		// show_debug_message("Jump counter: " + string(jump_counter));
		// add to counter to allow only double jumps
		move_y = -(player_attributes.jump) ;
		player_attributes.jump_counter++;
	} 

}