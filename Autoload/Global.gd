extends Node

const LOADING_SCREEN = preload("res://Scenes/LoadingScreen.tscn")
const TRELLARK_FOREST = preload("res://Scenes/Zones/TrellarkForest.tscn")
const ROUTE_1 = preload("res://Scenes/Zones/Route1.tscn")
const SLIME_FIELD = preload("res://Scenes/Zones/SlimeField.tscn")




func set_camera_limits(tilemap: TileMap, camera: Camera2D):
	var used_rect = tilemap.get_used_rect()
	var cell_size = Vector2(16, 16)
	
	var top_left = tilemap.map_to_local(used_rect.position)
	var bottom_right = tilemap.map_to_local(used_rect.position + used_rect.size)
	
	camera.limit_left = top_left.x
	camera.limit_top = top_left.y
	camera.limit_right = bottom_right.x - cell_size.x
	camera.limit_bottom = bottom_right.y - cell_size.y


