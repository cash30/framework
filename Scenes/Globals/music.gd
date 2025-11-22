extends AudioStreamPlayer
var isMusicPlaying = false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	stream = load("res://Music/Main theme.mp3")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	
	if Globals.shouldMusicBePlaying and !isMusicPlaying:
		play()
		print("starting music")
		isMusicPlaying = true
	elif !Globals.shouldMusicBePlaying and isMusicPlaying:
		stop()
		isMusicPlaying = false
		
