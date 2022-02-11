/// @description Insert description here
// You can write your code in this editor

if (isInvincible)
{
	invTimer -= 1/room_speed;
	if (invTimer < 0)
	{
		invTimer = 0.5;
		isInvincible = false;
	}
}

xDirection = sign(oPlayer.x - x);
xVector = xSpeed * xDirection;

if (abs(oPlayer.x - x) < 1024)
{
	x = x + xVector
}

yDirection = sign(oPlayer.y - y);
yVector = ySpeed * yDirection;

if (abs(oPlayer.y - y) < 1024)
{
	y = y + yVector
}

shotTimer -= 1/room_speed;

if (shotTimer < 0)
{
	shotTimer = 1;
	var bullet = instance_create_layer(x, y, "Instances", oProjectile)
	with (bullet)
	{
		speed = 6
		direction = point_direction(x, y, oPlayer.x, oPlayer.y);
	}
}