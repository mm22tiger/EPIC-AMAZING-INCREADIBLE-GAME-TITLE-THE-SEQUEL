letters += spd;
text_current = string_copy(text,1,floor(letters));

// sets the font of the text.
draw_set_font(Font1);
if (h == 0) h = string_height(text);
w = string_width(text_current);

//deletes the text when player presses any key.
if (letters >= length) && (keyboard_check_pressed(vk_anykey))
{
	instance_destroy();
	with (oSign)
	{
		image_speed = 0;
		image_index = 0;
	}
}
