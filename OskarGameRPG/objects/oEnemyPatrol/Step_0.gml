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

turnTimer -= 1/room_speed;
if (invTimer < 0)
{
	turnTimer = 2.5;
	xDirection = -xDirection
}
xVector = xSpeed * xDirection

if (place_meeting(x + xVector, y, oWall))
{
	xDirection = -xDirection;
	turnTimer = 2.5;
}

x = x + xVector;