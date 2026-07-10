// move to step event after testing

_flex_node = layer_get_flexpanel_node("UILayer_controls")
_flex_struct = flexpanel_node_get_struct(_flex_node)

show_debug_message($"UI layer node: {_flex_struct.name}")

// expose lower layers

_flex_left_control_node = flexpanel_node_get_child(_flex_node, "FlexPanel_Left")
_struct_left_control = flexpanel_node_get_struct(_flex_left_control_node)


show_debug_message($"Controls flex node: {_struct_left_control.name}")




// var Flex_Controls = flexpanel_node_get_child(_flex_node, "FlexPanel_Controls")



// show_debug_message("child flex node: ", Flex_Controls )