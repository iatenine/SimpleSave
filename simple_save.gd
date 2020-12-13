extends Reference

class_name SimpleSave

static func save_scene(tree:SceneTree, filename:String) -> int:
	var root = tree.current_scene
	var scene = PackedScene.new()
	for x in root.get_children():
		x.set_owner(root)
	scene.pack(root)
	return ResourceSaver.save(filename,scene)

static func load_scene(tree:SceneTree, filename:String) -> int:
	return tree.change_scene(filename)
