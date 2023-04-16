


draw_set_colour(c_white)
draw_set_font(font_test)

draw_set_halign(fa_left)
draw_set_valign(fa_top)


draw_text_ext(50,50,display_string,-1,1100)


// Display the buttons 
var _number_of_buttons = array_length(button_data)
var _running_x = button_start_x
var _running_y = button_start_y

draw_set_font(font_test)
draw_set_halign(fa_middle)
draw_set_valign(fa_center)
for (var i = 0; i < _number_of_buttons; ++i) {
    draw_set_colour(c_white)
	draw_rectangle(_running_x,_running_y,_running_x+button_width,_running_y+button_height,false)
	
	draw_set_colour(c_black)
	draw_text(_running_x+button_width/2,_running_y+button_height/2,button_data[i].text)
	
	_running_x += button_dist_h
	_running_y += button_dist_v
	
}
