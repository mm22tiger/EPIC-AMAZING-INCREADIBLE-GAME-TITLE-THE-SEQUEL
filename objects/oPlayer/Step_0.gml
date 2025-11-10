// recieve input from player's keyboard if in control of the player character.
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

// when receiving input from the left and right controls, change the player speed in the corrosponding directions.
var move = (keyRight - keyLeft);

	hspd = move * walkSpd;

// set the vertical speed to itself + the gravity variable. 
	vspd += grv;

// define collisions as to when the player touches the collision object, it stops the sign of player horizontal speed from changing.
	if (place_meeting(x+hspd,y,CollisionFloor))
	{
		while(!place_meeting(x+sign(hspd),y,CollisionFloor))
		{
			x = x+sign(hspd)
		}
		hspd = 0;
	}

// define collisions as to when the player touches the collision object, it stops the player vertical speed from decreasing.
	if (place_meeting(x,y+vspd,CollisionFloor))
	{
		while(!place_meeting(x,y+sign(vspd),CollisionFloor))
		{
			y = y+sign(vspd)
		}
		vspd = 0;
	}

// cnage the player movement values if coliding with the water object and set them back to their default when not.
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

// enables multi jumping when colliding in water and disabling it when not.
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

// set the player's x and y coordinates to the corrosponding axis speeds.
	y += vspd;
	x += hspd;

	//Animations
// set the sprite shown to the jumping animation if not coliding with the floor / changing the frame based on the direction of vertical movement on jump.
	if (!place_meeting(x,y+1,CollisionFloor))
	{
		sprite_index = sPlayer_J;
		image_speed = 0;
		if (sign(vspd) > 0) image_index = 1; else image_index = 0;
	}

//set the sprite to idle when not moving horizontaly / set the sprite to running when is.
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

// set the direction of the sprite based on the sign of the x speed.
	if (hspd != 0) image_xscale = sign(hspd);
