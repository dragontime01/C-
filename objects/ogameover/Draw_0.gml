draw_set_font(Font1)
draw_text(300,300,  "game over you !")
draw_text(300,400, "here you score is" +string(global.point))

draw_set_alpha((sin(current_time/100) + 1)/2)
draw_text (300,500, "press enter to restart")
draw_set_alpha(1)

draw_text (300,700, "alt + F4 to left ")
draw_text (300,600, "you just a failed subject")

var keymenu = keyboard_check(ord("M"))
var keyEnter = keyboard_check(vk_enter)
if keyEnter {
	room_goto(game)
}
if keymenu {
	room_goto(Room2)
}