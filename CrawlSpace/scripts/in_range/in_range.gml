// @function in_range(tester, lower, higher) -> Bool
// @description Returns true if tester is inclusively between lower and higher
/// @param {Real} tester The number to check 
/// @param {Real} lower end of range
/// @returns {Boolean} True if inclusively in range 
// @example var _condition = in_range( number_to_check, lower_limit_inclusive, _upper_limit_inclusive ) ? // do something for true : // do something for false 

function in_range(tester, lower, higher){
	if ( tester >= lower && tester <= higher ) {
    return true;
	} else {
		return false; 
	}
}