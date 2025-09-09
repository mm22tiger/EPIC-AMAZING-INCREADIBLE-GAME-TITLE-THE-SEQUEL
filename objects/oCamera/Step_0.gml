if (instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;
	
	if ((follow).object_index == oPDead)
	{
		x = xTo;
		y = yTo;
	}
}

x += (xTo - x) / 25;
y += (yTo - y) / 25;

x = clamp(x,view_w_half,room_width-view_w_half);
y = clamp(y,view_h_half,room_width-view_h_half);

camera_set_view_pos(cam,x-view_w_half,y-view_h_half);

if (layer_exists("Spikes"))
{
	layer_x("Spikes",x/3);
}

if (layer_exists("LowerSpikes"))
{
	layer_x("LowerSpikes",x/4);
}
