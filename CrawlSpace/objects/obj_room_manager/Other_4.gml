// if global variable exists, room has reset, rebuild UI
if ( variable_global_exists("ui_struct") ) {
	flexpanel_create_node(global.ui_struct);
};


