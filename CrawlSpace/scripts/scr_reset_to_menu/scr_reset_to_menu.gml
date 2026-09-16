/// @function scr_reset_to_menu
/// @description Used to end game and return to main menu
/// @param {Asset.GMRoom} _room The room being played

function scr_reset_to_menu(_room){
	room_goto(_room)
	global.reset_game_room = true
	
	scr_to_menu()
}