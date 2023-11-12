 /// @description Insert description here
// You can write your code in this editor

ds_list_add(global.planetas,id)
position = ds_list_size(global.planetas) 
tam = 1.5
nome = "indefinido"
scale = image_xscale
maior = global.planetas[|0]
angle = 0
hspd = 0;
vspd = 0;
_acelt_x = 0
_acelt_y = 0
velo_orbita = 0
distancia_maior = 0
massa = 10000;
px = x;
py = y
mx = x
my = y
acelh = 0;
acelv = 0;
vel_tangencial = sqrt(power(hspd,2) + power(vspd,2))
cor = c_white
centro_massa_x = 0
centro_massa_y = 0
g = 6.674484 * power(10,-11)

deletar = function(){
	for(var i = 0; i <  ds_list_size(global.planetas); i++)
	{
		if (global.planetas[| i] == id) position = i;
		if (!instance_exists(global.planetas[|i])) ds_list_delete(global.planetas,i)
	}
	if(position_meeting(mouse_x,mouse_y,id) && keyboard_check(vk_delete)){
		if (obj_game.invocador == id)
		{
			if (obj_game.invocador == global.planetas[|ds_list_size(global.planetas) - 1]){obj_game.invocador = global.planetas[| position -1] obj_game.number = position -1}
			else {obj_game.invocador = global.planetas[|position + 1] obj_game.number = position + 1}
			
			
		}
		ds_list_delete(global.planetas,position)
		instance_destroy()
		
		
		
	}
}

calcular_semi_eixo = function(){

a = (g * massa_todos)/power(vel_tangencial,2) - point_distance(x,y,centro_massa_x,centro_massa_y)/2
a = a * -1
}



informacao = function(){
	
	esc_cor = esc_vel < vel_tangencial ? c_green : c_white;
	if(obj_game.invocador == id && instance_exists(obj_game.invocador))
	{
	var _x = 20
	var _y = 20
	draw_set_halign(fa_left)
	draw_set_valign(fa_left)
	draw_set_font(f_text)
	draw_set_color(c_white)
	draw_text(_x,_y, "Nome: " + nome)
	draw_text(_x,_y + 20,"Massa: "+ string(massa))
	draw_text(_x,_y + 40,"Velocidade horizontal: "+string(hspd))
	draw_text(_x,_y + 60,"Velocidade vertical: "+string(vspd))
	draw_text(_x,_y + 80,"Distância do objeto mais massivo: "+string(distancia_maior))
	draw_text_colour(_x,_y + 100,"Velocidade de escape: "+string(esc_vel), esc_cor, esc_cor, esc_cor, esc_cor, 1)
	draw_text(_x,_y + 120,"FPS: "+string(fps_real))
	draw_text(_x,_y + 140,"Semi_eixo: "+string(a))
	
	}
}

