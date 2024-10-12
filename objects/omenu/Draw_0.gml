draw_set_font(Font1)
draw_text(800,400,  "command:overkill!")

draw_set_alpha((sin(current_time/100) + 1)/2)
draw_text (1000,700, "press enter to play") 
draw_set_alpha(1)

draw_text (600,500, "DONT DIE YOURE LAST 1")

var keyEnter = keyboard_check(vk_enter)
if keyEnter {
	room_goto(game)
}
var keyS = keyboard_check(ord("T"))
if keyS {
	room_goto(Room4)
}