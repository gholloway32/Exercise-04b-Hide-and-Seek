extends Node2D

onready var Bat = load("res://Enemy/Bat.tscn")
onready var Turret = load("res://Enemy/Turret.tscn")

func _physics_process(_delta):
	if not has_node("Bat"):
		var bat = Bat.instance()
		add_child(bat)
		bat.name = 'Bat'
	if not has_node("Turret"):
		var turret = Turret.instance()
		add_child(turret)
		turret.name = 'Turret'
