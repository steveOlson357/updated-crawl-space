function scr_reset_to_menu(_room){
	room_goto(_room)
	show_debug_message("resettingroom...")
	global.reset_game_room = true
	
	scr_to_menu()
}