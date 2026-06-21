// Accepts flex panel as string, returns struct and deletes existing panels received

function scr_handle_ui_room_reset(flex_node){
	
	show_debug_message("room reset function called")
	
	panel_flex = layer_get_flexpanel_node(flex_node)
	
	show_debug_message("pointer set for " + "another string")
	


	// get FlexPanel_Controls 
	// use existing FlexPanel_Controls to populate global struct variable
	get_ui_struct = flexpanel_node_get_struct(panel_flex)

	show_debug_message("got struct in local variable")
	// delete flexpanel and children, will populate in room start when global variable above exists
	flexpanel_delete_node(panel_flex, true)

	return (get_ui_struct)

};