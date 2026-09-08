// check for existing instance and self destruct if exists
if ( instance_number(obj_menu) > 1 ) {
	instance_destroy()
}

// options
menu[0] = "Start Game"
menu[1] = "About"
menu[2] = "Controls"

menu_length = array_length(menu)
index = 0 // current item



