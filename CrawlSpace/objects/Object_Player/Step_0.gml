// utilize direction keys for movement and player attributes for gravity and speed
move_x = ((keyboard_check(vk_right) - keyboard_check(vk_left)) * player_attributes.player_speed);
move_y = player_attributes.player_fall_speed


// Flips player sprite to match direction
if(move_x != 0) {
	image_xscale = sign(move_x);
}

// firing
if keyboard_check_pressed(vk_space) {
	// create laser 
	instance_create_layer(
		x + (sign(Object_Player.image_xscale) * 10), 
		y - 16, "Instances_Player", obj_laser, 
		{
			speed: (sign(Object_Player.image_xscale)*10) 
			}
			)
}


// Jump
if (keyboard_check_pressed(vk_up) ){
	
	
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


// check for platforms and perform movement
move_and_collide(move_x, move_y, PlatformTileCollisions);


// set height limit for player death for falling out of the room
if y > (room_height + sprite_height) {
	room_restart()
}

// check for enemy attack, applies damage then evaluates for damage or death animations
if place_meeting(x, y, ZapFly) {
	player_attributes.player_hp -= ZapFly.strength
	
	if (player_attributes.player_hp > 0) {
		move_x = 0;
		move_y = 0;
		
		sprite_index = BlueMarineDamaged;
		alarm[0] = 30;
	}
	
	
}

// health check for room reset
if (player_attributes.player_hp <= 0) {
	room_restart()
}