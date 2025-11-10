// plays the animation and destroys the block when player interacts with lever.
if mouse_check_button_pressed(mb_right)
	{
		image_speed = 1;
		with (oCreate) instance_destroy()
		with (CollisionFloor) instance_destroy(Block)
	}
