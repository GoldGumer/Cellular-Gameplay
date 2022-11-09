/// @description Insert description here
// You can write your code in this 

// 0 = dead, 1 = alive
frameNo = 0
randomise()
numTile[0, 0] = 0
for (y = 0; y < 29; y++) {
	for (x = 0; x < 48; x++) {
		tiles[x, y] = instance_create_depth(x*33, y*33, 0, Tile)
		if irandom(1) == 1 {
			tiles[x, y].alive = true
		}
	}
}