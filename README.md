# SimpleSave

## How to install
 - Add simple_save.gd to your project files
 - You should now be able to call the functions listed below by calling SimpleSave.function_name()

## Methods

|Return Type | Method | Description|
|------------|:----:|:----------:|
Error | save_scene(tree:SceneTree, filename:String) | Saves a snapshot of the SceneTree provided to the filename specified by the second argument, overwriting it if it exists
Error | save_scene_partial(top_node:Node, filename:String) | Saves a snapshot of the node provided and all its children to the given filename, overwriting it if it exists
Error | load_scene(tree:SceneTree, filename:String) | Changes the scene provided to the scene located in the specified filename
Error | load_scene_partial(top_node:Node, filename:String) | Changes the node provided to the node located in the specified filename

## Examples
- Saving 
   - Can be called from any node within the target scene by passing "get_tree()" as the first parameter
   - You can save a SceneTree from an external node but will need to pass a reference to it as the first parameter (uncommon)
   - Will overwrite a file if it exists already
   - Will create any necessary directories that don't already exist in your project
      > SimpleSave.save_scene(get_tree(), "res://save_slots/snapshot0.tscn")

- Loading 
  - Recommended to call from the scene's root node when loading using load_scene() or at least an ancestor when using load_scene_partial()
  - Will still function from other nodes but seems to cause a flicker
    > SimpleSave.load_scene(get_tree(), "res://save_slots/snapshot0.tscn")
