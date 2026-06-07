function scr_player_hit(enemy){
	
		player_attributes.player_hp -= enemy.strength
	
	if (player_attributes.player_hp > 0) {
		move_x = 0;
		move_y = 0;
		
		sprite_index = BlueMarineDamaged;
		alarm[0] = 30;
	}

}