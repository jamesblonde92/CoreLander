//bounce off of surfaces
//bounceMultiplier: multiplies speed when a collision happens

function scr_collision(bounceMultiplier)
{
	//x check
	if(place_meeting(x + hspeed, y, obj_wall))
	{
		while(!place_meeting(x + sign(hspeed), y, obj_wall))
		{
			x = x + sign(hspeed);
		}
		hspeed = -hspeed * bounceMultiplier;
	}

	//y check
	if(place_meeting(x, y + vspeed, obj_wall))
	{
		while(!place_meeting(x, y + sign(vspeed), obj_wall))
		{
			y = y + sign(vspeed);
		}
		vspeed = -vspeed * bounceMultiplier;
	}
	
	//x and y check
	if(place_meeting(x + hspeed, y + vspeed, obj_wall))
	{
		while(!place_meeting(x + sign(hspeed), y + sign(vspeed), obj_wall))
		{
			y = y + sign(vspeed);
			x = x + sign(hspeed);
		}
		vspeed = -vspeed * bounceMultiplier;
		hspeed = -hspeed * bounceMultiplier;
	}
}