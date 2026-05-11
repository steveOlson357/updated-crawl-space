// Attributes, mutable (struct) and immutable (const)

player_attributes = {
		player_hp : 100, 
		player_speed : 1,
		enemies : []
	};
	
tileCollisions = layer_tilemap_get_id("Tiles_Platforms");

INTERACTS_WITH = [
		tileCollisions
	];
	
	