if (duckKey)
{
	ducking = true;
	jumping = false;
	falling = true;
}

if (place_meeting(x, y + 1, obj_block))
{
	// we're touching the ground
	vspd = 0;
	jumping = false;
	falling = false;
	
	if (!duckKey)
		ducking = false;
		
	// if the player wants to jump
	if ((jumpKey || jumpKeyAlt) && !duckKey)
	{
			jumping = true;
			vspd = -jspd;
	}
}
else
{
	if (ducking)
	{
		vspd += grav * 4;	
	}
	else
	{
		if (vspd < termVelocity)
			vspd += grav;
			
		if (sign(vspd) == 1)
			falling = true;
	}
}