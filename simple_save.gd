extends Reference

class_name SimpleSave

static func save_scene(tree:SceneTree, filename:String) -> int:
	var root = tree.current_scene
	return _save_scene(root, filename)

static func load_scene(tree:SceneTree, filename:String) -> int:
	return tree.change_scene(filename)

static func load_scene_partial(top_node:Node, filename:String) -> int:
	var f = File.new()
	if(!f.file_exists(filename)):
		print_debug("File: " + str(filename) + " doesn't exist")
		return ERR_FILE_NOT_FOUND
	var new_obj = ResourceLoader.load(filename)
	top_node.replace_by(new_obj.instance())
	return OK

static func save_scene_partial(node:Node, filename:String) -> int:
	return _save_scene(node, filename)

static func _save_scene(top_node:Node, filename:String) -> int:
	var d = Directory.new()
	d.make_dir_recursive(filename.get_base_dir())
	var scene = PackedScene.new()
	for x in top_node.get_children():
		x.set_owner(top_node)
	scene.pack(top_node)
	return ResourceSaver.save(filename,scene)

