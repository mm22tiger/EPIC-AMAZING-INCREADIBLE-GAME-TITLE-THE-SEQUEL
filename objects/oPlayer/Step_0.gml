if (hascontrol)
{
	keyLeft = keyboard_check(vk_left);
	keyRight = keyboard_check(vk_right);
	keyJump = keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_up);
	keyInteract = mouse_check_button_pressed(mb_right);
	keySprint = keyboard_check(vk_shift);
	keyAttack = mouse_check_button_pressed(mb_left);
}
else
{
	key_right = 0;
	key_left = 0;
	key_jump = 0;
}

var move = (keyRight - keyLeft);

	hspd = move * walkSpd;
	vspd += grv;

	if (place_meeting(x+hspd,y,CollisionFloor))
	{
		while(!place_meeting(x+sign(hspd),y,CollisionFloor))
		{
			x = x+sign(hspd)
		}
		hspd = 0;
	}

	if (place_meeting(x,y+vspd,CollisionFloor))
	{
		while(!place_meeting(x,y+sign(vspd),CollisionFloor))
		{
			y = y+sign(vspd)
		}
		vspd = 0;
	}
	
	if (place_meeting(x,y,oWater))
	{
		walkSpd = 1.25;
		grv = 0.1;
		jumpHeight = -4;
		inwaterjump = true;
	}
	else
	{
		walkSpd = 2.5
		grv = 0.3
		jumpHeight = -7;
		inwaterjump = false;
	}
	
	if (inwaterjump = true)
	{
		if (keyJump) && (canJump = true)
		{
			vspd = jumpHeight;
			canJump = false;
			alarm[0] = room_speed * 0.5;
		}
	}
	else
	{
		if (keyJump) && (place_meeting(x,y+1,CollisionFloor))
		{
			vspd = jumpHeight;
			alarm[0] = room_speed * 0.5;
		}
	}

	y += vspd;
	x += hspd;

	//Animations
	if (!place_meeting(x,y+1,CollisionFloor))
	{
		sprite_index = sPlayer_J;
		image_speed = 0;
		if (sign(vspd) > 0) image_index = 1; else image_index = 0;
	}
	else
	{
		image_speed = 1
		if (hspd == 0)
		{
			sprite_index = sPlayer_R;
		}
		else
		{
			sprite_index = sPlayer
		}
	}
	if (hspd != 0) image_xscale = sign(hspd);