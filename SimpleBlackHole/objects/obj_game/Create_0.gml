/// @description Insert description here
// You can write your code in this editor
x = room_width/3
y = room_height/3
global.massa = power(10,6)
global.planetas = ds_list_create();
number = 0;
invocador = id
camera_width = camera_get_view_width(view_camera[0])
camera_height = camera_get_view_height(view_camera[0])
zoom = 1
view_center_x = -room_width/2;
view_center_y = -room_height/2;
camera_zoom = function()
{
	 zoom *= power( 1.1, mouse_wheel_down() - mouse_wheel_up() );
	 
	 
	 camera_set_view_size(view_camera[0],camera_width * zoom, camera_height * zoom)
}

troca_invocador = function()
{

var _right = keyboard_check_pressed(vk_right)
var _left = keyboard_check_pressed(vk_left)

if (_left && number > 0){ number--; invocador = global.planetas[|number];}

if (_right && number < ds_list_size(global.planetas) - 1){ number++ invocador = global.planetas[|number]}


}

