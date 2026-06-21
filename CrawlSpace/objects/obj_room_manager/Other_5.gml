// when room ends, call script to set global variable for reset and destroy old UI 

show_debug_message("room end event triggered before unhandled exception")

global.ui_struct = scr_handle_ui_room_reset("UILayer_controls");