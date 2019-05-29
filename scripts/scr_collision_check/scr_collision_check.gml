if (place_meeting(x, y + vspd, obj_block))
{
	while (!place_meeting(x, y+sign(vspd), obj_block))
	{
		y += sign(vspd);	
	}
	
	vspd = 0;
}

y += vspd;