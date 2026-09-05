// listen for enter or escape to pause

if ( keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_escape) ) {

	is_paused = !is_paused	
	if ( is_paused )  room_goto(rm_pause)
	else  instance_activate_all()
}

