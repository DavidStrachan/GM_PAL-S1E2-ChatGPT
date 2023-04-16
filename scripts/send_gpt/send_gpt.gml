function send_gpt(_question){
	
	var map = ds_map_create();
	//ds_map_add(map, "Host", "https://api.openai.com/v1/completions");
	ds_map_add(map, "Authorization", "Bearer " + APIKEY);
	ds_map_add(map, "Content-Type", "application/json");

	var _data = {
					"model": "text-davinci-003",
					"prompt": _question,
					"max_tokens": int64(30),
					"temperature": 0.6,
					"n": int64(4),
				}
			
	var data = json_stringify(_data)


	request = http_request("https://api.openai.com/v1/completions", "POST", map, data);

	display_string = "Loading"

	show_debug_message("Request Sent")
	show_debug_message(request)
	show_debug_message(data)

	ds_map_destroy(map)

}