// Player Movement, collission check

player_attributes.move_x = keyboard_check(vk_right) - keyboard_check(vk_left);
player_attributes.move_x = player_attributes.move_x * player_attributes.move_speed;

// checks if solid surface is below player
if(place_meeting(x, y + 2,[interacts_with, my_tilemap]) && !keyboard_check(vk_up)) {
	player_attributes.move_y = 0 ;
	
} else {
	// fall
	if (player_attributes.move_y < player_attributes.jump) {
		player_attributes.move_y += 1;
	}
}

move_and_collide(player_attributes.move_x, player_attributes.move_y, [interacts_with, my_tilemap]);

// Flips player sprite to match direction
if(player_attributes.move_x != 0) {
	image_xscale = sign(player_attributes.move_x);
}


/**************************************************************************************************************************
***need to figure out how to relate instance to object to get the proper strength variable once more enemies are created***
***************************************************************************************************************************/

if (place_meeting(x, y, ZapFly)) { 
	// enemy interaction, only damage if it does NOT kill player, else death animation
	player_attributes.player_health -= ZapFly.strength
	if (player_attributes.player_health > 0) {
		player_attributes.move_x = 0;
		player_attributes.move_y = 0;
		sprite_index = BlueMarineDamaged;
		alarm[0] = 30;
	}
	
	// if kills player, play animation and set health to 0
	else if (player_attributes.player_health <= 0) { 
		sprite_index = BlueMarineDeath;
		alarm[1] = 10;

	}
};

//if (player_attributes.player_health <= 0) {
//	x = xstart;
//	y = ystart;
//	player_attributes = DEFAULT_ATTRIBUTES;
//	sprite_index = BlueMarineWaiting;
//}
	