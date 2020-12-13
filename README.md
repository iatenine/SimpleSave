# SimpleSave

## How to install
 - Add simple_save.gd to your project files
 - You should now be able to call the functions listed below by calling SimpleSave.function_name()

## Methods

|Return Type | Method | Description|
|------------|:----:|:----------:|
Error | save_scene(tree:SceneTree, filename:String) | Saves a snapshot of the SceneTree provided to the filename specified by the second argument, overwriting it if it exists
Error | load_scene(tree:SceneTree, filename:String) | Changes the scene provided to the scene located in the specified filename


## Examples
- Saving 
   - Can be called from any node within the target scene by passing "get_tree()" as the first parameter
   - You can save a SceneTree from an external node but will need to pass a reference to it as the first parameter (uncommon)
   - Will overwrite a file if it exists already
   - Will fail if the filepath references a directory that doesn't exist in your project
      > SimpleSave.save_scene(get_tree(), "res://save_slots/snapshot0.tscn")

- Loading 
  - Recommended to call from the scene's root node
  - Will still function from other nodes but seems to cause a flicker
    > SimpleSave.load_scene(get_tree(), "res://save_slots/snapshot0.tscn")
