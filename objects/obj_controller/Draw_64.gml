draw_set_color(make_color_rgb(83, 83, 83));
draw_set_font(fnt_main);
draw_text(room_width/2, room_height/2, string(global.speedModifier));
draw_text(room_width - 100, 10, string(score));

if (global.gameOver)
	draw_sprite(spr_game_over, 0, room_width/2, room_height/2);