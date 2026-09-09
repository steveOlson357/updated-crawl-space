// Pause functionality
is_paused = false

pause_options = ["Resume", "Restart", "Quit"]
pause_index = 0

pause_length = array_length(pause_options)

global.reset_game_room = false

title_layer = layer_get_id("UILayer_title")
layer_set_visible(title_layer, false)

other_layers = ["UILayer_title", "UILayer_paused"]

ui_layer_hide(other_layers)