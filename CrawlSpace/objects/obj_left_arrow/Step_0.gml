

// get flexbox holding button
// UILayer_controls -> FlexPanel_Left

_flex_node = layer_get_flexpanel_node("UILayer_controls")
_flex_struct = flexpanel_node_get_struct(_flex_node)


// Get struct for left control flexpanel

_flex_left_control_node = flexpanel_node_get_child(_flex_node, "FlexPanel_Left")
_struct_left_control = flexpanel_node_get_struct(_flex_left_control_node)


