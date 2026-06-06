
if place_meeting(x, y, interacts_with) {
	
	// instance place returns instance ID or keyword noone
	target_hit = instance_place(x, y, ZapFly) 

	if (target_hit != noone) {
		instance_destroy(target_hit)
	}

	instance_destroy()
}