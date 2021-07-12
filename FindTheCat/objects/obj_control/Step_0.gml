/// @description Insert description here
// You can write your code in this editor
if (keyboard_check_pressed(ord("R"))) game_restart();
if (global.gameOver == true) {
	
	draw_rectangle_color(0, 0, 1200, 768, c_purple, c_purple, c_purple, c_purple, false);
}