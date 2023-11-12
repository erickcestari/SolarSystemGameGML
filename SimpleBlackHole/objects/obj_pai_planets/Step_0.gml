/// @description Insert description here
// You can write your code in this editor
/*


var g = 6.6743 * power(10,-11)

var dis = point_distance(x,y,global.planetas[|0].x,global.planetas[|0].y)

var forca = g * (global.planetas[|0].massa * global.planetas[|1].massa) / dis * dis;

show_debug_message("forca " + string(forca))


disx = global.planetas[|0].x - global.planetas[| 1].x;
disy = global.planetas[|0].y - global.planetas[| 1].y;

seno = disy / dis;
cose = disx / dis


var forcay = forca * seno

var forcax = forca * cose
show_debug_message("forca y " + string(forcay))
show_debug_message("forca x " + string(forcax))


show_debug_message(dis)

acelh = forcax
acelv = forcay

hspd += acelh;
vspd += acelv


x += hspd;

y += vspd
*/



if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x,mouse_y,id))
{
	obj_game.invocador = id;
}

massa_todos = massa
centro_massa_x = massa * x
centro_massa_y = massa * y
for(var i = 0; i < ds_list_size(global.planetas); i++)
{
	if (instance_exists(global.planetas[| i]))
	{
		if(global.planetas[| i].id != id)
		{
			var dis = point_distance(x,y,global.planetas[|i].x,global.planetas[|i].y)
			
			show_debug_message(global.planetas[| i].id)
			if (dis < 500)
			{
				dis = 500
			}
		
			forca = g * ((massa * global.planetas[|i].massa) / (dis * dis));
		
		
			disx = global.planetas[| i].x - x;
			disy =  global.planetas[| i].y -  y;

			seno = disy / dis;
			cose = disx / dis;
			
			var acel = forca / (massa) 

			var acely = acel * seno

			var acelx = acel * cose
			
		
			acelh = acelx
			acelv = acely
			
			massa_todos += global.planetas[| i].massa
			centro_massa_x +=  global.planetas[| i].massa *  global.planetas[| i].x
			centro_massa_y +=  global.planetas[| i].massa *  global.planetas[| i].y
			
			
			hspd += acelh;
			vspd += acelv
			if (instance_exists(maior))
			{
				_acelt_x =  ((g * ((massa * maior.massa) / (power(point_distance(x,y,maior.x,maior.y),2))) * ((maior.x - x) / point_distance(x,y,maior.x,maior.y)))) / massa
				_acelt_y =  ((g * ((massa * maior.massa) / (power(point_distance(x,y,maior.x,maior.y),2))) * ((maior.y - y) / point_distance(x,y,maior.x,maior.y)))) / massa
			}
			calcular_semi_eixo()
			
		}
	}
	
}
vel_tangencial = sqrt(power(hspd,2) + power(vspd,2))
deletar()

centro_massa_x = centro_massa_x/massa_todos
centro_massa_y = centro_massa_y/massa_todos

var efeito = instance_create_layer(x,y,"Efeitos",obj_efeito)
efeito.sprite_index = sprite_index
efeito.image_xscale = scale
efeito.cor = cor
efeito.pai = id;
image_angle+= angle;
