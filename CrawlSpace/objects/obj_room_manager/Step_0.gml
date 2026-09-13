// listen for enter or escape to pause

if ( room == rm_single_view && ( keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_escape) ) ) {

	is_paused = !is_paused	
	if ( is_paused )  {
		room_persistent = true 
		room_goto(rm_pause)
	} else  { 
	//	instance_activate_all()
	}
}

