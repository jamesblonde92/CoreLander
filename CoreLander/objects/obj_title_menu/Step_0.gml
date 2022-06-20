//Get inputs
up_key = keyboard_check_pressed(vk_up);
down_key = keyboard_check_pressed(vk_down);

//Move through menu
pos += down_key - up_key;

//Loop menu ends
if pos >= op_length 
{
	pos = 0;
}
if pos < 0 
{
	pos = op_length -1;
}