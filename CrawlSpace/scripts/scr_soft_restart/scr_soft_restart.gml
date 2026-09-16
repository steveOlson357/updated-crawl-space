/// @function scr_soft_restart
/// @description Called from pause menu to return to and reset game room
/// @param {Asset.GMRoom} _room Game room to restart in
function scr_soft_restart(_room){
	room_goto(_room)
	global.reset_game_room = true
}