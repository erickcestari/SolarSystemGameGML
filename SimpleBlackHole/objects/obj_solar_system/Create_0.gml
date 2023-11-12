/// @description Insert description here
// You can write your code in this editor

x = room_width /3
y = room_height/3


var mercurio = instance_create_layer(x + -1 * 300 -1000, y + 50, layer, obj_mercury)
var venus = instance_create_layer(x + 5 * 300 + 1100, y + 500, layer, obj_venus)
var terra = instance_create_layer(x + 10 * 300 + 1500, y + 1200,layer, obj_earth1)
var lua = instance_create_layer(x + 10 * 300 + 100 + 1500, y + 650,layer, obj_moon1)
var marte = instance_create_layer(x + -17 * 300 + 1000 , y + 250,layer, obj_mars1)
var jupiter = instance_create_layer(x + 20 * 300 + 100, y + 500, layer, obj_jupiter1)
var saturn = instance_create_layer(x + 25 * 300 + 100, y + 500, layer, obj_saturn)
var uranu = instance_create_layer(x + 30 * 300 + 100, y + 500, layer, obj_uranu)
var netuno = instance_create_layer(x + 35 * 300 + 100, y + 500, layer, obj_netuno)
var sun = instance_create_layer(x,y,layer,obj_sun14)
obj_game.invocador = sun
netuno.vspd = 8

uranu.vspd = 9

saturn.vspd = 9
saturn.hspd = -1


jupiter.vspd = 10

venus.vspd = -13

mercurio.vspd = -20

marte.vspd = -13

terra.vspd = -9
terra.hspd = 0

lua.vspd = -9
lua.hspd = 0

