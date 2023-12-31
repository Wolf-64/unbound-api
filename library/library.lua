---@meta

-- The library is where all files are stored, on disk you can find it under Documents/Unbound/Library.
-- Inside your unbound library you can find .ubs files, each file contains a Collection.
-- Collections are containers for entities and all the other things that unbound can store and load, they are used to represent any sort of game scene you might need.
library = {}

---Load a collection from file.
function libraryLoadCollection(filePath, callback) end

---Save a collection to disc.
---@param filePath string: relative path (ex. "model/myAsset.ubs")
---@param entities table: list of entities to be saved
---@param optional? callback function(status): async callback invoked once the operation is done
function librarySaveCollection(filePath, entities, callback) end

---Get a list of all collections inside Documents/Unbound/Library and subfolders.
---@param callback function(statusresults): async callback invoked once the operation is done
---@return IOTask # A handle to the async task
function libraryListCollections(callback) end

---Delete a collection .ubs file from the library.
---@param filePath string: relative path (ex. "model/myAsset.ubs")
---@param callback function(status): async callback invoked once the operation is done
function libraryDeleteCollection(filePath, callback) end

---Move a collection .ubs file in the library (also equivalent to renaming the file).
---@param oldFilePath string: relative path (ex. "model/myAsset.ubs")
---@param newFilePath string: relative path (ex. "otherDir/myAssetRenamed.ubs")
---@param callback function(status): async callback invoked once the operation is done
function libraryMoveCollection(oldFilePath, newFilePath, callback) end

---Copy a collection .ubs file in the library.
---@param oldFilePath string: relative path (ex. "model/myAsset.ubs")
---@param newFilePath string: relative path (ex. "otherDir/myAssetRenamed.ubs")
---@param callback function(status): async callback invoked once the operation is done
function libraryCopyCollection(oldFilePath, newFilePath, callback) end

---Create a collection and returns it as a variable.
function createCollection(entities) end

---Instanciate a collection previously created using createCollection.
---@param collection Collection
---@return Table # List of entities instantiated
function instantiateCollection(collection) end
