function scr_soft_restart(_room){
	room_goto(_room)
	show_debug_message($"room: {_room} sent to script and called")
	global.reset_game_room = true
}