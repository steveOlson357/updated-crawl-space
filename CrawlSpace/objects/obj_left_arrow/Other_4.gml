// move to step event after testing

_flex_node = layer_get_flexpanel_node("UILayer_controls")
_flex_struct = flexpanel_node_get_struct(_flex_node)

// show_debug_message($"UI layer node: {_flex_struct.name}")

// Get struct for left control flexpanel

_flex_left_control_node = flexpanel_node_get_child(_flex_node, "FlexPanel_Left")
_struct_left_control = flexpanel_node_get_struct(_flex_left_control_node)

_left_btn_w = _struct_left_control.width 
_left_btn_h = _struct_left_control.height 


show_debug_message($"OBJ LEFT ARROW ROOM START DEBUG MESSAGE: Controls flex panel width, height: {_left_btn_w}, {_left_btn_h}")


// must run calculate on node, not struct, then can get position

flexpanel_calculate_layout(_flex_left_control_node, room_width, room_height, flexpanel_direction.LTR)

var _flexpanel_position_struct = flexpanel_node_layout_get_position(_flex_left_control_node)


show_debug_message($"STRUCT FOR FLEX POSITION: {_flexpanel_position_struct}")