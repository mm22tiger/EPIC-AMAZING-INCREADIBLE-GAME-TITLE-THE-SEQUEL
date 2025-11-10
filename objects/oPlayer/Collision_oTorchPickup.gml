// when interacting on the torch object, make the object invisible and make the light object follow the player object.
if (keyInteract)
{
	with (oTorchPickup)
	{
		sprite_index = sTorchHolder;
	}
	with (oTorchLight)
	{
		visible = true;
	}
		with (oTorchLightPickup)
	{
		visible = false;
	}
}
