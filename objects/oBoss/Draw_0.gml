draw_self();

//initiante a white flash when hit.
if (flash > 0)
{
	flash--;
	shader_set(Shader1);
	draw_self();
	shader_reset();
}
