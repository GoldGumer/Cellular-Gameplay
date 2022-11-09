/// @description Insert description here
// You can write your code in this editor

frameNo++

if frameNo == 20 {
	frameNo = 0
	for (y = 0; y < array_length(tiles[0]); y++) {
		for (x = 0; x < array_length(tiles); x++) {
			if tiles[x, y].alive {
				numTile[x, y] = 1
			}
			else {
				numTile[x, y] = 0
			}
		}
	}
	
	for (y = 0; y < array_length(tiles[0]); y++) {
		for (x = 0; x < array_length(tiles); x++) {
			CNeigh = 0
			for (i = -1; i < 2; i++) {
				for (j = -1; j < 2; j++) {
					if !(i == 0 and j == 0) {
						if (x + j >= 0) and (x + j < array_length(tiles)) 
						and (y + i >= 0) and (y + i < array_length(tiles[0])) {
							if tiles[x + j, y + i].alive {
								CNeigh++
							}
						}
					}
				}
			}
			if CNeigh < 2 or CNeigh > 3 and tiles[x, y].alive {
				numTile[x, y] = 0
			}
			else if CNeigh == 3 and !tiles[x, y].alive {
				numTile[x, y] = 1
			}
		}
	}
	
	for (y = 0; y < array_length(tiles[0]); y++) {
		for (x = 0; x < array_length(tiles); x++) {
			if numTile[x, y] = 0 {
				tiles[x, y].alive = false	
			}
			else {
				tiles[x, y].alive = true
			}
		}
	}
}