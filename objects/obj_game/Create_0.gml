multiplier = 50;
rows = 10;
columns = 7;
grid = ds_grid_create(columns, rows);

/* 0 should imply empty tile, 1 should imply a falling tile and
-1 should imply fixed tiles We need a separate indicator number 
for a fixed tile because it would have become difficult for us 
to distinguish between which tiles to make fall. fixed tiles can 
have gaps between them and do not need to keep falling. We have 
to deal with this because, falling shapes are still not physical 
objects, in the way we are programming right now. */

ds_grid_clear(grid, 0);

// Also a shape's identity as a certain arrangement of tiles yet
// as a whole unit is difficult to manage within the ds_grid. So
// we rather create a shape object which has its own set of properties
// that should handle its operations like drawing and rotation.
// In short, the grid manages the 

grid[# 0, 3] = 1
grid[# 3, 1] = 1
grid[# 6, 7] = 1

// since the step event runs 60 times per second
// the tile drop is instantaneous we need to skip 
// some of those events, which can be managed by
// fall delay and timer
fall_delay = 90; // 1 fall per 1.5 seconds
fall_timer = 0;

// random color allotment to shape, by choosing
// a number between 1-8 during shape spawn
color_types = {
	"1": "blue",
	"2": "purple",
	"3": "yellow",
	"4": "pink",
	"5": "orange",
	"6": "green",
	"7": "cyan",
	"8": "red",
}

shape_types = [
	{
		type:"tshape",
		tile_count: 4,
		shape: [],
		rotate: function(){
			// method to rotate the shape clockwise
			show_debug_message("rotated tshape");
		},
		draw: function(){
			// method to draw the shape
		}
		
	}

]