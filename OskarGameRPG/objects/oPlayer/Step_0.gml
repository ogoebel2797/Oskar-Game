/// @description movement
//code that runs every frame

if isInvincible
{
	invTimer -= 1/room_speed;
	if invTimer <= 0
	{
		isInvincible = false;
		invTimer = 2;
	}
}

isInvincible = false;

levelTimer -= 1/room_speed;

if (levelTimer <= 0)
{
	room_restart();
}

//keyboard check and imputs
right = keyboard_check(vk_right);
left = keyboard_check(vk_left);
up = keyboard_check(vk_up);
down = keyboard_check(vk_down)

//Horizontal Movement
xDirection = right - left;
xVector = xSpeed * xDirection;

//check to see if there is a wall, and if there is, stop movement, if there isn't continue movement

if (place_meeting(x + xVector, y, oWall))
	{
		//check if 1 pixel to the left or right of us until we collide with oWall
		// !  means "not"
		while(!place_meeting(x + xVector, y, oWall))
			{
			//only move 1 pixel at a time until you hit a wall
			x = x + xDirection;
			}
			xVector = 0;
	}
//otherwise move normal
x = x + xVector;

//Horizontal Movement
yDirection = down - up;
yVector = ySpeed * yDirection;

//check to see if there is a wall, and if there is, stop movement, if there isn't continue movement

if (place_meeting(y + yVector, x, oWall))
	{
		//check if 1 pixel up or down of us until we collide with oWall
		// !  means "not"
		while(!place_meeting(y + yVector, x, oWall))
			{
			//only move 1 pixel at a time until you hit a wall
			y = y + yDirection;
			}
			yVector = 0;
	}
//otherwise move normal
y = y + yVector;