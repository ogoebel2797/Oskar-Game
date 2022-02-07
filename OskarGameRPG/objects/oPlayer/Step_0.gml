/// @description movement
//code that runs every frame

if isInvincible
{
	invTimer -= 1/room_speed;
	if invTimer <= 0
	{
		isInvincible = false;
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
jump = keyboard_check_pressed(vk_space);

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

//Vertical Movement
yVector = yVector + grv;

if (place_meeting(x, y + yVector, oWall))
	{
		//check if 1 pixel to the left or right of us until we collide with oWall
		// !  means "not"
		//"sign is oing to retirn the positive or negative sign for a vaie (-1, +1)
		//sign(yVector) if yVector is positive it will return a postitive 1 and if our yVector is negative, it will return a negative 1
		while(!place_meeting(x, y + sign(yVector), oWall))
			{
			//only move 1 pixel at a time until you hit a wall
			y = y + sign(yVector);
			}
			yVector = 0;
	}
//otherwise move normal
y = y + yVector;

//if we are touching oWall and we press the jump key, fly like an eagle
if (place_meeting(x, y + 1, oWall) and (jump))
{
	yVector = jumpForce;
}


//die in a pit
if (y >= room_height)
	{
		PlayerDeath();
	}