// check for something under player

if place_meeting(Object_Player.x, Object_Player.y + sprite_get_bbox_bottom(Player), tileCollisions) {
		move_and_collide(dx, 0, tileCollisions)
	}
