//activates a wite flash when enemy is hit.
draw_self();

if (flash > 0)
{
	flash--;
	shader_set(Shader1);
	draw_self();
	shader_reset();
}
