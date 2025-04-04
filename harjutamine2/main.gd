extends Node2D
@onready var spawn_layer: TileMapLayer = $spawnLayer
var generatedSpawns: Dictionary
var cellArr:Array
const item_scenes:Dictionary={
	"axe": preload("res://items/axe.tscn"),
	"bucket": preload("res://items/bucket.tscn"),
	"hoe": preload("res://items/hoe.tscn")}
var item_instances:Dictionary={}
var items:Dictionary={"axe":3, "bucket":2, "hoe":10}
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	cellArr=spawn_layer.get_used_cells()
	for k in  item_scenes.keys():
		item_instances[k]=item_scenes[k].instantiate() as collectible
	spawn(item_instances)
	
func spawn(obj:Dictionary):
	for key in items.keys():
		for i in range(items[key]):
			var el:Vector2i=cellArr.pick_random()
			if(el in generatedSpawns):
				print("works")
				i-=1
				continue
			else:
				generatedSpawns[el]=null
				var new_obj:collectible=obj[key].duplicate()
				new_obj.type=key
				add_child(new_obj)
				var world_position = spawn_layer.map_to_local(el)
				print(world_position)
				new_obj.global_position=world_position
	generatedSpawns.clear()
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
