// utilize direction keys for movement and player attributes for gravity and speed
move_x = ((keyboard_check(vk_right) - keyboard_check(vk_left)) * player_attributes.player_speed);
move_y = (player_attributes.player_fall_speed);


// Reset jump counter if on solid surface
if(place_meeting(x, y + 2, PlatformTileCollisions)) {
	player_attributes.jump_counter = 0;
}	



// Jump
if (keyboard_check_pressed(vk_up) ){
	// add to counter to allow only double jumps
	if (player_attributes.jump_counter <= 1) {
		// show_debug_message("Jump counter: " + string(jump_counter));
		move_y = -(player_attributes.jump) ;
		player_attributes.jump_counter++;
		// show_debug_message("jump counter incremented: " + string(jump_counter));
	}

}


// check for platforms
move_and_collide(move_x, move_y, PlatformTileCollisions);


// set height limit for player death for falling out of the room



// health check for room reset

if (player_attributes.player_hp <= 0) {
	room_restart()
}