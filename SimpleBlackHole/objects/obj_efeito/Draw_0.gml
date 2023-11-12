/// @description Insert description here
// You can write your code in this editor
if (keyboard_check(vk_shift) && pai == obj_game.invocador)
{
	
}
else if (!keyboard_check(vk_control))
{
	image_xscale -= 0.07
	image_yscale = image_xscale
	image_alpha -= 0.05
}

image_yscale = image_xscale
if (timer < 0)
{	
	draw_sprite_ext(spr_effect,0,x,y,image_xscale,image_yscale,0,cor,image_alpha)
	timer = timer_max
}
timer--
timer = -1
if (image_alpha <= 0.05)
{
	instance_destroy()
}