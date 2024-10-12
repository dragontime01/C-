instance_destroy(other)

hp -= 1

if hp <= 0 {
	instance_create_layer(x,y, "patical", opatical )
	instance_create_layer(x,y, "patical", opowerup)
	instance_destroy()
	global.point += 10
}

image_index = 1
flashdelay = 3