// utilize direction keys for movement and player attributes for gravity and speed
move_x = ((keyboard_check(vk_right) - keyboard_check(vk_left)) * player_attributes.player_speed);
move_y = (player_attributes.player_fall_speed);




// Jump

// limit to only double jump








if (keyboard_check_pressed(vk_up) ){
	move_and_collide(0, -Object_Player.sprite_height * .75, PlatformTileCollisions);
	
}







// check for platforms
move_and_collide(move_x, move_y, PlatformTileCollisions);


// set height limit for player death for falling out of the room

// health check for room reset