


show_debug_message("In Async Event")



show_debug_message(async_load)

var _size = ds_map_size(async_load)
var _key = ds_map_find_first(async_load)
for (var i = 0; i < _size; ++i) {
	if (_key == "result") 
	{
		show_debug_message(async_load[? _key])
	    
		var _full_message = json_parse(async_load[? _key])
		
		var _number_returned = array_length(_full_message.choices)
		display_string = ""
		for (var j = 0; j < _number_returned; ++j) {
		    display_string += _full_message.choices[j].text
			display_string += "\n"
		}

	}
	
	_key = ds_map_find_next(async_load,_key)
	
}
