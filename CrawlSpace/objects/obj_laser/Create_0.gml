// Creation code - declare variables

laser_height = sprite_height; 
laser_width = sprite_width;

// Speeds relative to player facing direction
//move_speed = sign(Player.image_xscale) * 10;

move_y = 0;

// solid objects like platforms and walls
platform_layer_id = layer_get_id( "Tiles_Platforms");
PlatformTileCollisions = layer_tilemap_get_id(platform_layer_id);

interacts_with = [PlatformTileCollisions, ZapFly];

