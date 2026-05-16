// utilize direction keys for movement and player attributes for gravity and speed
move_x = ((keyboard_check(vk_right) - keyboard_check(vk_left)) * player_attributes.player_speed);
move_y = (player_attributes.player_fall_speed);

// Jump
if (keyboard_check_pressed(vk_up) ){
	move_and_collide(0, -Object_Player.sprite_height * .75, PlatformTileCollisions);
}

// check for something under player
move_and_collide(move_x, move_y, PlatformTileCollisions);