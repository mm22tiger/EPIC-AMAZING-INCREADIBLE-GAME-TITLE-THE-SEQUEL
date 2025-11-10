// calls on the function to activate the transition and restart the game when coliding with the lava.
with (oPlayer)
{
	if (hascontrol)
	{
		hascontrol = false;
		SlideTransition(TRANS_MODE.RESTART);
	}	
}
