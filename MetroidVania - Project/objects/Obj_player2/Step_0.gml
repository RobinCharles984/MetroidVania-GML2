right = keyboard_check(vk_right)
left = -keyboard_check(vk_left)
jump = keyboard_check_pressed(vk_space)

move = left + right
xspeed = move * movespeed
if(yspeed < 10) yspeed += grav

if(place_meeting(x, y + 1, Obj_block2))
	yspeed = jump * -jumpspeed

if(place_meeting(x + xspeed, y, Obj_block2))
{
	while(!place_meeting(x + sign(xspeed), y, Obj_block2))
	{
		x += sign(xspeed)	
	}
	xspeed = 0
}

if(place_meeting(x, y + yspeed, Obj_block2))
{
	while(!place_meeting(x, y + sign(yspeed), Obj_block2))
	{
		y += sign(yspeed)	
	}
	yspeed = 0
}

x += xspeed
y += yspeed