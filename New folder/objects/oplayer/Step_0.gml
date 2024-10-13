var keyup = keyboard_check(vk_up) or keyboard_check(ord("w"))
var keydown =    keyboard_check(vk_down)  or keyboard_check(ord("s"))
var keyleft =     keyboard_check(vk_left) or keyboard_check(ord("a"))
var keyright =    keyboard_check(vk_right) or keyboard_check(ord("d"))
var keyshoot =    keyboard_check(vk_space) 

var moveX = keyright - keyleft 
var moveY = keydown  - keyup

x += moveX * walkspeed
y += moveY * walkspeed

// regame
if keyboard_check(vk_escape) {
	game_restart()
}
if keyboard_check(ord("R")){
	game_restart()
}

//lock player in room 
if x < 0 {
	x = 0
}
if x > room_width - 100 {
	x = room_width - 100
}

if y > room_width - 1000 {
	y = room_width - 1000
}

// shooting
shootdelay -= 2
if keyshoot and shootdelay < 0 {
	if poweruptimer > 0 {
		
		
		var bullet1 = instance_create_layer(x,y, "bullet", obullet)
		bullet1.speed = bulletspeed
	bullet1.direction = 90
	var bullet2 = instance_create_layer(x,y, "bullet", obullet)
		bullet2.speed = bulletspeed
	bullet2.direction = 100
	var bullet3 = instance_create_layer(x,y, "bullet", obullet)
		bullet3.speed = bulletspeed
	bullet3.direction = 80
	var bullet4 = instance_create_layer(x,y, "bullet", obullet)
		bullet4.speed = bulletspeed
	bullet4.direction = 85
	var bullet5 = instance_create_layer(x,y, "bullet", obullet)
		bullet5.speed = bulletspeed
	bullet5.direction = 95
	bullet1.image_xscale = 2 
		bullet1.image_yscale = 2
		bullet2.image_xscale = 2
		bullet2.image_yscale = 2
		bullet3.image_xscale = 2
		bullet3.image_yscale = 2
		bullet4.image_xscale = 2
		bullet4.image_yscale = 2
		bullet5.image_xscale = 2
		bullet5.image_yscale = 2
	}
	var bullet = instance_create_layer(x,y, "bullet", obullet)
		bullet.speed = bulletspeed
	bullet.direction = 90
	shootdelay = shootspeed
	if keyshoot audio_play_sound(gun, 0,false)
}

var count = instance_number(obullet)

show_debug_message(count)

//powerup
if poweruptimer > 0 {
 poweruptimer --;
 image_index = 1
}
else {image_index = 2}

// spawn enemy
createdelay -= 1
if createdelay < 0 {
	var xrandom = random(room_width)
	var scalerandom = random_range(1, 1.5);
	var enemy2 =	instance_create_layer(xrandom,-600, "enemy2", oenemy2)
var enemy =	instance_create_layer(xrandom,-600, "enemy", oenemy)
	enemy.image_xscale = scalerandom
	enemy.image_yscale = scalerandom
	enemy.Emovespeed = Emovespeed / scalerandom
	enemy.hp = enemyhp * scalerandom
		enemy2.E2movespeed = E2movespeed
		enemy2.hp2 = enemy2hp
	createdelay = createspeed
}
	