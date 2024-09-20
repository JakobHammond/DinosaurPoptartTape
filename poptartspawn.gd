extends Node

var myNode = preload("res://poptart.tscn")
var myOtherNode = preload("res://scenes/Tape.tscn")
var rng = RandomNumberGenerator.new()

func _on_timer_timeout():
	var poptartRandPos = rng.randi_range(0,1050)
	var tapeRandPos = rng.randi_range(0, 1050)
	#spawn poptarts
	poptart(Vector2(poptartRandPos,-210))
	#spawn tape (more tape if your score is higher)
	tape(Vector2(tapeRandPos, -210))
	if(Global.score > 14):
		var tape2RandPos = rng.randi_range(0, 1050)
		tape(Vector2(tape2RandPos, -230))
	if(Global.score > 29):
		var tape3RandPos = rng.randi_range(0,1050)
		tape(Vector2(tape3RandPos, -220))
	if(Global.score > 49):
		var tape4RandPos = rng.randi_range(0,1050)
		tape(Vector2(tape4RandPos, -250))
	if(Global.score > 74):
		var tape5RandPos = rng.randi_range(0, 1050)
		tape(Vector2(tape5RandPos, -215))
	
	
func poptart(pos):
	var instance = myNode.instantiate()
	instance.position = pos
	add_child(instance)
func tape(pos):
	var instance = myOtherNode.instantiate()
	instance.position = pos
	add_child(instance)
