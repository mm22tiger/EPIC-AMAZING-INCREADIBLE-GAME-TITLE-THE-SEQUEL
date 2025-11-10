//sets the collision with the death animation object.
if (done ==0)
{
	vspd = vspd +grv;
	
	if (place_meeting(x+hspd,y,CollisionFloor))
	{
		while(!place_meeting(x+sign(hspd),y,CollisionFloor))
		{
			x = x+sign(hspd)
		}
		hspd = 0;
	}
	x = x + hspd;

	if (place_meeting(x,y+vspd,CollisionFloor))
	{
		if (vspd > 0)
		{
			done = 1;
			image_index = 1;
			alarm[0] = 60;
		}
		while(!place_meeting(x,y+sign(vspd),CollisionFloor))
		{
			y = y+sign(vspd)
		}
		vspd = 0;
	}
	y = y + vspd;
}
