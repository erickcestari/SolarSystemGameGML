/// @description Insert description here
// You can write your code in this editor

maior = id;

ds_list_add(global.planetas,id)
position = ds_list_size(global.planetas)
image_xscale = 15
image_yscale = image_xscale

hspd = 0;
vspd = 0;
nome = "Buraco Negro"
massa = 800000000000000;
_acelt_x =0;
_acelt_y = 0;
acelh = 0;
acelv = 0;

angle = 0;
px = x;
py = y
mx = x
my = y


    
surf = -1;
surf_w = surface_get_width(application_surface);
surf_h = surface_get_height(application_surface);
tex_transform = shader_get_uniform( sh_blackhole, "tex_transform" );
sampler = shader_get_sampler_index( sh_blackhole, "tex_back" );

    
//NOTE:  without texture repeating, when blackhole is near edge of view,
//       you will see streaks near the center
//       where it is trying to read positions outside of the texture edges
//       toggle on or off at your own discretion.
    texture_set_repeat(true);


//just for demo
    view_center_x = obj_game.view_center_x;
    view_center_y = obj_game.view_center_y;
    zoom = obj_game.zoom;


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

informacao = function(){
	if(obj_game.invocador == id && instance_exists(obj_game.invocador))
	{
	var _x = 20
	var _y = 20
	draw_set_halign(fa_left)
	draw_set_valign(fa_left)
	draw_set_font(f_text)
	draw_text(_x,_y, "Nome: " + nome)
	draw_text(_x,_y + 20,"Massa: "+ string(massa))
	draw_text(_x,_y + 40,"Velocidade horizontal: "+string(hspd))
	draw_text(_x,_y + 60,"Velocidade vertical: "+string(vspd))
	draw_text(_x,_y + 80,"Velocidade oribtal: "+string(velo_orbita))
	draw_text(_x,_y + 100,"Distância do objeto mais massivo: "+string(distancia_maior))
	draw_text(_x,_y + 120,"FPS: "+string(fps_real))
	}
}

