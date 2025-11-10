// removes the players control and calls the transition function to go to the next level.
with (oPlayer)
{
	if (hascontrol)
	{
		hascontrol = false;
		SlideTransition(TRANS_MODE.GOTO,other.target);
	}	
}
