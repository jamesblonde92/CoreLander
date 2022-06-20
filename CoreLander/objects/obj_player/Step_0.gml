/// @description Physics/Controls

//physics effects
vspeed += global.gravityStrength;
rotationSpeed *= rotationalDampening;

//controls-------------------------------------------------------------------------------
//turn left
if(keyboard_check(vk_left))
{
	rotationSpeed += rotationAccel;
}
//turn right
if(keyboard_check(vk_right))
{
	rotationSpeed -= rotationAccel;
}
//thrust
if(keyboard_check(vk_up))
{
	hspeed += lengthdir_x(thrustStrength, image_angle);
	vspeed += lengthdir_y(thrustStrength, image_angle);
	image_index = 1;				//test animation REMOVE
}
else if(!keyboard_check(vk_up))		//test animation REMOVE
{									//test animation REMOVE
	image_index = 0;				//test animation REMOVE
}									//test animation REMOVE

image_angle += rotationSpeed;

//collision------------------------------------------------------------------------------
//move out of a wall when inside of it
if(place_meeting(x, y, obj_wall))
{
	while(place_meeting(x, y, obj_wall))
	{
		y -= 2;
	}
}
//bounce off of wall
scr_collision(0.5);