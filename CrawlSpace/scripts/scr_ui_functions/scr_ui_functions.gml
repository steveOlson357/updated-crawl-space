/// @function			ui_layer_hide();
/// @params {ARRAY}		ui_layers
/// @description		hides all ui layers passed in as array

function ui_layer_hide(ui_layers){
	array_foreach(
		ui_layers,
		show_debug_message($"{ui_layer}")
	)
}