// Attributes, mutable (struct) and immutable (const)



player_attributes = {
		height : sprite_height,
		width : sprite_width,
		player_hp : 100, 
		player_speed : 4,
		player_fall_speed: 2,
		enemies : [],
		jump_counter : 0,
		jump : 1.25 * sprite_height
		
	};
	
platform_layer_id = layer_get_id( "Tiles_Platforms");
PlatformTileCollisions = layer_tilemap_get_id(platform_layer_id);

DEFAULT_ATTRIBUTES = player_attributes;

// keep consistent sprite area
mask_index = Sprite_Player;

