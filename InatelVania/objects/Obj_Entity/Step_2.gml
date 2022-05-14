var _xspeed = sign(xspeed);
var _yspeed = sign(yspeed);

//Horizonta
repeat(abs(xspeed))
{
	if(place_meeting(x + _xspeed, y, Obj_Tile))
	{
		xspeed = 0;
		break;
	}
	x += _xspeed;
}

//Vertical
repeat(abs(yspeed))
{
	if(place_meeting(x, y + _yspeed, Obj_Tile))
	{
		yspeed = 0;
		break;
	}
	y += _yspeed;
}
