for (var row = 0; row < rows; row++) {
    for (var col = 0; col < columns; col++) {
        var val = ds_grid_get(grid, col, row);

        if (val == 1) {
            var xx = col * multiplier;
            var yy = row * multiplier;

            draw_sprite_ext(tetris_blue, 0, xx, yy, 
                            multiplier / sprite_get_width(tetris_blue),  // scale X
                            multiplier / sprite_get_height(tetris_blue), // scale Y
                            0, c_white, 1);
        }
		else if (val == -1) {
            var xx = col * multiplier;
            var yy = row * multiplier;

            draw_sprite_ext(tetris_yellow, 0, xx, yy, 
                            multiplier / sprite_get_width(tetris_blue),  // scale X
                            multiplier / sprite_get_height(tetris_blue), // scale Y
                            0, c_white, 1);
        }
    }
}