// lower the boss' hp variable by 1 each time an arrow colides with it.
with (other)
{
	hp--;
	flash = 3;
}

instance_destroy();
