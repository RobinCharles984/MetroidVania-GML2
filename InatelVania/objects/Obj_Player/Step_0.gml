/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

//Variaveis
var left = keyboard_check(ord("A"));
var right = keyboard_check(ord("D"));
var jump = keyboard_check(ord("W"));
var chao = place_meeting(x, y + yspeed, Obj_Tile);//Recognize floor

//Movement
xspeed = (right - left) * max_xspeed;

//Change sprite direction
if(xspeed != 0) xscale = sign(xspeed);
image_xscale = xscale;

//Apply gravity
if(!chao)
{
	yspeed += GRAVIDADE * massa;	
}
