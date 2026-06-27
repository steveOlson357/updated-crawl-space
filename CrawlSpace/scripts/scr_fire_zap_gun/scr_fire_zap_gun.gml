function scr_fire_zap_gun(){
	
		// create laser 
	instance_create_layer(
		x + (sign(Object_Player.image_xscale) * 10), 
		y - 16, "Instances_Player", obj_laser, 
		{
			speed: (sign(Object_Player.image_xscale)*10) 
			}
			)

}