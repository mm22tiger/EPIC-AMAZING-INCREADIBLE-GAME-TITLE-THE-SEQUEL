vspd += grv;
//Horizontal Collision
if (place_meeting(x+hspd,y,CollisionFloor))
{
    while (!place_meeting(x+sign(hspd),y,CollisionFloor))
        {
            x = x + sign(hspd);
        }
    hspd = -hspd;
}
 
//Vertical Collision
if (place_meeting(x,y + vspd,CollisionFloor))
{
    while (!place_meeting(x,y+sign(vspd),CollisionFloor))
        {
            y = y + sign(vspd);
        }
    vspd = 0;
}
 
x += hspd
y += vspd

//controls which animation sprite plays
if (!place_meeting(x,y+1,CollisionFloor))
{
    sprite_index = sEnemyJ;
    image_speed = 0;
    if (sign(vspd) > 0) image_index = 1; else image_index = 0;
}
else
{
    image_speed = 1;
    if (hspd == 0)
    {
        sprite_index = sEnemy_R;
    }
    else {
    	sprite_index = sEnemy;
    }
}
