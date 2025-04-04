extends Node
var item_list:=PackedStringArray()

func add_item(item:String):
	item_list.append(item)
	print(item_list)
func clear_items():
	item_list.clear()
	
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
