// sets the position and scale 
image_xscale = 0.75;
image_yscale = 0.75;
x = oPlayer.x+10;
y = oPlayer.y;

image_angle = point_direction(x,y,mouse_x,mouse_y);

firingdelay = firingdelay - 1;
recoil = max(0,recoil - 1);

// activate the shooting function to spawn an arrow when input is recieved.
if (mouse_check_button(mb_left)) && (firingdelay < 0)
{
	recoil = 4;
	firingdelay = 10;
	with (instance_create_layer(x,y,"Arrows",oArrow))
	{
		speed = 15;
		direction = other.image_angle + random_range(-3,3);
		image_angle = direction;
	}
}

x = x - lengthdir_x(recoil,image_angle);
y = y - lengthdir_y(recoil,image_angle);
