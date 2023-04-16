


// Display the buttons 
var _number_of_buttons = array_length(button_data)
var _running_x = button_start_x
var _running_y = button_start_y

for (var i = 0; i < _number_of_buttons; ++i) 
{
	
	if (mouse_check_button_released(mb_left)) 
	{
		if (point_in_rectangle(mouse_x,mouse_y,_running_x,_running_y,_running_x+button_width,_running_y+button_height)) 
		{
			send_gpt(button_data[i].question)
		}
	}
	
	_running_x += button_dist_h
	_running_y += button_dist_v
	
}
