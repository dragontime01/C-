flashdelay -= 1

if flashdelay < 0 {
	image_index = 0
}

y += Emovespeed

if y > room_height + 500 {
	instance_destroy()
}	