/// @description Enemy Step

// verify enemy alive and check for velocity change




	if hp > 0 && Object_Player.player_attributes.player_hp > 0 {
		enemyLogic(spd);
	} else { 
		// killing a ZapFly will have a random chance of spawning a new one
		if (irandom(15) == 1) {
			instance_create_layer(x, y, "Instances_Enemies", ZapFly);
		}
		instance_destroy();
	}
	

step_ctr = step_ctr - 1; 
if (step_ctr <= 1) {
	if (irandom_range(1, 3) == 3){
		instance_create_layer( irandom_range(400, 1200), irandom_range(400, 1200), "Instances_Enemies", ZapFly);
	}
	
	step_ctr = irandom_range(300, 800);
};

// wrap both horiz and vert
move_wrap(true, true, sprite_width * 0.1)