

function scr_handle_ui_room_reset(flexpanel){


// get FlexPanel_Controls 
// use existing FlexPanel_Controls to populate global struct variable
global.FlexPanelStruct = flexpanel_node_get_struct(flexpanel)


// delete flexpanel and children, will populate in room start when global variable above exists
flexpanel_delete_node(flexpanel, true)


}