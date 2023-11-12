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
var g = 6.6743 * power(10,-11)

if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x,mouse_y,id))
{
	obj_game.invocador = id;
}

for(var i = 0; i < ds_list_size(global.planetas); i++)
{
	
	if(global.planetas[| i].id != id)
	{
		show_debug_message(12313)
		var dis = point_distance(x,y,global.planetas[|i].x,global.planetas[|i].y)
		if (dis < 300)
		{
			dis = 300
		}
		forca = g * ((massa * global.planetas[|i].massa) / (dis * dis));
		
		disx = global.planetas[| i].x - x;
		disy =  global.planetas[| i].y -  y;

		seno = disy / dis;
		cose = disx / dis

		forca = forca / massa
		
		var forcay = forca * seno

		var forcax = forca * cose
		
		
		acelh = forcax
		acelv = forcay

		hspd += acelh;
		vspd += acelv
		
		_acelt_x =  ((g * ((massa * maior.massa) / (power(point_distance(x,y,maior.x,maior.y),2))) * ((maior.x - x) / point_distance(x,y,maior.x,maior.y)))) / massa
		_acelt_y =  ((g * ((massa * maior.massa) / (power(point_distance(x,y,maior.x,maior.y),2))) * ((maior.y - y) / point_distance(x,y,maior.x,maior.y)))) / massa
		
	}
	
}


massa += massa * 0.02

image_angle += angle

deletar()

//move view for demo

   
