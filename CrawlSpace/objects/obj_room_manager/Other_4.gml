// if global variable exists, room has reset, rebuild UI
if ( variable_global_exists("FlexPanelStruct") ) {
	flexpanel_create_node(FlexPanelStruct)
};