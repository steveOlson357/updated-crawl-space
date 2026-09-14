draw_set_font(fnt_menu)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)

gap = 60

for ( i = 0; i < menu_length; i++ ) {
	if ( i == index ) draw_set_colour(c_aqua)
	else draw_set_color(c_green)
	draw_text(room_width / 2, (room_height / 2.25) + (i*gap), menu[i])
}

// reset drawing default
draw_set_colour(c_white)