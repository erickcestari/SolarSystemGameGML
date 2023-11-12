/// @description Insert description here
// You can write your code in this editor
var g = 6.6743 * power(10,-11)
draw_self();
for (var i = 0; i < ds_list_size(global.planetas); i++)
{
	if (instance_exists(global.planetas[|i]) && instance_exists(maior)) if (maior.massa < global.planetas[|i].massa ) maior = global.planetas[|i]
}


if (instance_exists(maior))
{
	
	
	distancia_maior = point_distance(x,y,maior.x,maior.y)
	esc_vel = sqrt((2 * g * maior.massa) / distancia_maior)
	massa_maior = maior.massa
	c = x - maior.x;
	b = y - maior.y;
	a = distancia_maior;
	//(9.85 * 4) / g * massa_maior
	centrox = x - c
	centroy = y - b
	if (x > px)
	{
		px = x;
	}
	if (y > py)
	{
		py = y;
	}
	if (y < my)  
	{
		my = y
	}
	if (x < mx)
	{
		mx = x
	}
	if (keyboard_check(ord("C"))){my = y; mx = x}
	
	//draw_ellipse_color(x,y,distanczzia_maiorx * 2 + x, distancia_maiory * 2 + y, c_white, c_white, 1)
	if (keyboard_check(ord("Z"))) {
		draw_ellipse_color(mx,my, px,  py, c_white, c_white, 1)
		draw_set_font(f_text)
		draw_set_halign(fa_center)
		draw_text_transformed(x ,y + sprite_height /2,nome,image_xscale,image_xscale,angle)
		}
	
	//CALCULO DE ORBITA
	
	velo_orbita = power(((g * maior.massa) / distancia_maior),0.5)
	
	
	
}
else {maior = id}


if (keyboard_check(vk_lshift))
{
		
		draw_arrow(x,y, x + (hspd * 50), y + (vspd * 50), 50)
		draw_arrow(x,y, x + (hspd * 50), y, 50)
		draw_arrow(x,y, x, y + (vspd * 50), 50)
		draw_arrow(x,y,x + (_acelt_x * 1000) , y + (_acelt_y * 1000),50)
		draw_set_font(f_text)
		draw_set_halign(fa_center)
		draw_text_transformed(x + (_acelt_x * 1000) , y + (_acelt_y * 1000),"Aceleração", 2, 2,angle)
		draw_text_transformed( x, y + (vspd * 51),"Vel vertical", 2, 2,angle)
		draw_text_transformed(x + (hspd * 51), y + (vspd * 51),"Vel tangencial", 2, 2,angle)
		draw_text_transformed(x + (hspd * 51), y ,"Vel horizontal", 2, 2,angle)
		draw_line_color(x,y,centro_massa_x,centro_massa_y,c_red,c_red)
	for(var i = 0; i < ds_list_size(global.planetas); i++)
	{
		//draw_line(x,y,global.planetas[|i].x, global.planetas[|i].y)
		
	}
}

/*
if (keyboard_check(vk_control))
{
	instance_destroy(obj_white_ball)
}
instance_create_layer(x,y,"Efeitos",obj_white_ball)
*/




/*
draw_line(maior.x,maior.y, centrox, centroy)
draw_line(maior.x, maior.y, maior.x + c * 2, maior.y)
//draw_line(maior.x,maior.y,x - c, y - b)


draw_ellipse(centrox - a, centroy - b, centrox + a, centroy + b, 1)
