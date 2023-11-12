/// @description Insert description here
// You can write your code in this editor




// Inherit the parent event
event_inherited();
nome = "nave"
massa = 10000000
image_angle = 0;
nave_acel_vert = 0;
nave_acel_hor = 0;
vel_x = 0;
vel_y = 0;
potencia = 1;
spd = 0.05;
movimentacao = function()
{
	var _down, _left, _right, _up, vel_h, vel_v;

	_down = keyboard_check(ord("S"));
	_up = keyboard_check(ord("W"));
	_left = keyboard_check(ord("A"));
	_right = keyboard_check(ord("D"));

	vel_v = lengthdir_y((- _up) * spd,image_angle - 90)
	vel_h = lengthdir_x((- _up) * spd,image_angle - 90)
	
	image_angle += (_left - _right) * 2;
	
	
	nave_acel_hor = lerp(nave_acel_hor,vel_h, potencia)
	nave_acel_vert = lerp(nave_acel_vert,vel_v, potencia)
	
	vel_x = nave_acel_hor
	vel_y = nave_acel_vert
	
	if(!_up) image_index = 0;
	
	
	hspd += vel_x;
	vspd += vel_y;
	
}
