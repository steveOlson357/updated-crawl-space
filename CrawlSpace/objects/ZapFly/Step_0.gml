/// @description Enemy Step

// verify enemy alive and check for velocity change



	if hp > 0 && Sprite_Player.player_attributes.player_health > 0 {
		enemyLogic(spd);
	} else { 
		// killing a ZapFly will have a random chance of spawning a new one
		if (irandom(15) == 1) {
			instance_create_layer(x, y, "Character_Instances", ZapFly);
		}
		instance_destroy();
	}
	
if place_meeting(x, y, obj_laser) {

		instance_destroy();
		
}

step_ctr = step_ctr - 1; 
if (step_ctr <= 1) {
	if (irandom_range(1, 3) == 3){
		instance_create_layer( irandom_range(400, 1200), irandom_range(400, 1200), "Character_Instances", ZapFly);
	}
	
	step_ctr = irandom_range(300, 800);
};