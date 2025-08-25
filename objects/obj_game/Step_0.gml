// Step Event
fall_timer++;

if (fall_timer >= fall_delay) {
    fall_timer = 0;
	var count = 0;
	
	for (var i = shape_rows-1; i >= 0; i--) {
	    for (var j = shape_cols-1; j >= 0; j--) {
			if (shape[# i, j] == 1){
				count++;
			}
		}
	}
	
	// We are traversing from bottom-top because
	// traversing otherwise, would make the top
	// bottom adjacent tiles separate, making only
	// the bottom facing tiles fall and reach the 
	// bottom, leaving the rest of the shape stationary
	// all in a single event. The remanant's shape
	for (var i = rows-1; i >= 0; i--) {
	    for (var j = columns-1; j >= 0; j--) {
        
	        var val = ds_grid_get(grid, i, j);
        
	        if (val == 1) {
	            // If there's empty space below
	            if (i+1 < rows && ds_grid_get(grid, i+1, j) == 0) {
	                // we move the tiles down
	                ds_grid_set(grid, i, j+1, 1);
	                ds_grid_set(grid, i, j, 0);
	            }
	        }
	    }
	}
}