/// @description Insert description here
// You can write your code in this editor
var g = 6.6743 * power(10,-11)

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
		
	for(var i = 0; i < ds_list_size(global.planetas); i++)
	{
		//draw_line(x,y,global.planetas[|i].x, global.planetas[|i].y)
		
	}
}
if (keyboard_check(vk_lshift))
{
	for(var i = 0; i < ds_list_size(global.planetas); i++)
	{
		draw_line(x,y,global.planetas[|i].x, global.planetas[|i].y)
	}
}

view_center_x = obj_game.view_center_x;
view_center_y = obj_game.view_center_y;
zoom = obj_game.zoom;
    if !surface_exists( surf ) { surf = surface_create( surf_w, surf_h ); }
    surface_copy( surf, 0, 0, application_surface );
    shader_set( sh_blackhole );
    shader_set_uniform_f( 
        tex_transform, 
        sprite_width  / (surf_w*zoom), 
        sprite_height / (surf_h*zoom), 
        ( x - sprite_width/2  - __view_get( e__VW.XView, 0 ) ) / __view_get( e__VW.WView, 0 ), 
        ( y - sprite_height/2 - __view_get( e__VW.YView, 0 ) ) / __view_get( e__VW.HView, 0 ) 
    );
    texture_set_stage( sampler, surface_get_texture( surf ) );
    draw_self();
    shader_reset();

