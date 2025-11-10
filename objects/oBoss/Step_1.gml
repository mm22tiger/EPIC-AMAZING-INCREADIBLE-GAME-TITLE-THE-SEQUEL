//replace the boss with the boss' death object when health is below 0.
if (hp <= 0 )
{
	with (instance_create_layer(x,y,layer,oBOssDead))
	{
		direction = other.hitfrom;
		hspd = lengthdir_x(3,direction);
		vspd = lengthdir_y(3,direction);
		if (sign(hspd) != 0) image_xscale = sign(hspd);
	}
	
	
	instance_destroy();
}
