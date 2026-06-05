// Creation code - declare variables

player_height = sprite_height; 
player_width = sprite_width;

my_tilemap = layer_tilemap_get_id("Tiles_1");


// Array of solid objects like platforms and walls
interacts_with = [FloorSection, my_tilemap];

player_attributes = {
	
					player_health: 400,
					is_firing: 0,
					
					// Speeds relative to player size
					move_speed: 0.09 * player_width,
					jump: 0.15 * player_height,
					jump_counter: 0,

					move_y: 0,
					move_x: 0
};

DEFAULT_ATTRIBUTES = player_attributes;
				
function reset_player() {
	player_attributes = DEFAULT_ATTRIBUTES;

};

// array of enemies that will damage player
enemies = [ZapFly];
