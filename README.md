# SimpleSave

## How to install
 - Add simple_save.gd to your project files
 - Go to Project -> Project Settings -> AutoLoad
 - Click the folder icon next to "Path" and select simple_save.gd from your project files
   - The name "SimpleSave" is recommended and will be used in examples below

## Methods

|Return Type | Method | Description|
|------------|:----:|:----------:|
Error | save(tree:SceneTree, filename:String) | Saves a snapshot of the SceneTree provided to the filename specified by the second argument, overwriting it if it exists
Error | load(tree:SceneTree, filename:String) | Changes the scene provided to the scene located in the specified filename


## Examples
- Saving 
   - Can be called from any node within the target scene
   - Will overwrite a file if it exists already
   - Will fail if the filepath references a directory that doesn't exist in your project
      > SimpleSave.save(get_tree(), "res://save_slots/snapshot0.tscn")

- Loading 
  - Recommended to call from the scene's root node
  - Will still function from other nodes but seems to cause a flicker
    > SimpleSave.load(get_tree(), "res://save_slots/snapshot0.tscn")
