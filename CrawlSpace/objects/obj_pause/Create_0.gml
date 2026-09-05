// Pause functionality
is_paused = true

pause_options = ["Resume", "Restart", "Quit"]
pause_index = 0

pause_length = array_length(pause_options)

function unpause() { 
	is_paused = !is_paused	
	if ( !is_paused )  room_goto_previous()
}