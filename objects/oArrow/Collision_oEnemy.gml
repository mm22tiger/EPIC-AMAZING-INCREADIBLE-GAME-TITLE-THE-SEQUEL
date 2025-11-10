// lowers enemy hp for every arrow that colides with them.
with (other)
{
	hp--;
	flash = 3;
}

instance_destroy();
