/// @description Insert description here
// You can write your code in this editor

switch(room)
{
	case rm_start:
		draw_set_halign(fa_center);
		var yellow = c_yellow
		draw_text_transformed_color
		(
			room_width/2, 100,
			"SPACE ROCKS", 
			3, 3, 0,
			yellow, yellow, yellow, yellow, 1
		);
		
		draw_text (
			room_width/2, 200,
            "Score 1,000 points to win!\nW: move\nA/D: left/right\nENTER: shoot\n\n>> PRESS SPACE TO START <<"
		);
		break;
		
	case rm_game:
		draw_text(50,20, "SCORE: " + string(score));
		draw_text(50,40, "LIVES: " + string(lives));
		break;
		
	case rm_win:
		draw_set_halign(fa_center);
		var green = c_lime;
		draw_text_transformed_color
		(
			room_width/2, 100,
			"YOU WON!", 
			3, 3, 0,
			green, green, green, green, 1
		);
		
		draw_text (
			room_width/2, 200,
            "PRESS SPACE TO RESTART"
		);
		break;
	
	case rm_gameover:
		draw_set_halign(fa_center);
		var red = c_red;
		draw_text_transformed_color
		(
			room_width/2, 100,
			"GAME OVER", 
			3, 3, 0,
			red, red, red, red, 1
		);
		draw_text (
			room_width/2, 200,
            "FINAL SCORE: " + string(score)	
		);
		
		draw_text (
			room_width/2, 300,
            "PRESS SPACE TO RESTART"
		);
		break;
		break;
	
};