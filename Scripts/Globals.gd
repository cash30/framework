extends Control
var onScene    : PackedScene = load("res://Scenes/UI/Title.tscn")
var titleScene : PackedScene = load("res://Scenes/UI/Title.tscn")
var level1     : PackedScene = load("res://Scenes/levels/level1.tscn")
var howScene   : PackedScene = load("res://Scenes/UI/how.tscn")
var pauseScene : PackedScene = load("res://Scenes/UI/pause.tscn")

var isHoveringOverPlay = false
var didStart = false


func _ready() -> void:
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("pause"):
		get_tree()
	
	
func changeScene(scene : PackedScene):
	get_tree().change_scene_to_packed(scene)
	pass
