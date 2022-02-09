// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//trigger temporary invincibility and get damaged
function PlayerHurt()
{
	if(!oPlayer.isInvincible)
	{
		isInvincible = true;
		oPlayer.hp --;
		if (oPlayer.hp < 1)
		{
			PlayerDeath();
		}
	}

}

//restart level for player death
function PlayerDeath()
{
	room_restart();
}