/// @description Insert description here
// You can write your code in this editor
invocar = choose(obj_earth1,obj_mars1,obj_sun14,obj_moon1,obj_jupiter1,obj_mercury,obj_venus,obj_uranu,obj_saturn)
camera_zoom();
if (keyboard_check_pressed(ord("E")))
{
	invocador = instance_create_layer(mouse_x,mouse_y,layer,invocar)

}
if (invocador != undefined)
{
	if (instance_exists(invocador))
	{
		x = lerp(x,invocador.x,0.1)
		y = lerp(y, invocador.y, 0.1)
	}
	
	if (mouse_check_button(mb_right))
	{
	invocador.x = lerp(invocador.x,mouse_x,0.5)
	invocador.y = lerp(invocador.y,mouse_y,0.5)
	
	}
}
if (mouse_check_button_released(mb_middle))
{
	invocador = instance_create_layer(mouse_x,mouse_y,"Top",obj_black_hole)
}

troca_invocador();

