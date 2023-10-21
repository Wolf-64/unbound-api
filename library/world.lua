---@meta

-- The world contains entities, in its most basic form an Entity is an invisible transform with children.
-- An Entity with extra data can become a Model, Panel, Light, Camera or Environment.
world = {}

---Clear everything in the current world.
function world.clearWorld() end

---Check if an entity is valid. An entity will become invalid if it gets destroyed but a variable still points to it.
---@param entity Entity: a pointer to an entity in the world
---@return bool
function world.isValid(entity) end

---Find an entity by name.
---@param name string
---@return Entity # a pointer to an entity in the world, nil if the entity was not found
function world.findByName(name) end

---Find entities by tag.
---@param tag string
---@return Table # a list of entities
function world.findByTag(tag) end

---Get the type of an entity. Available types are "Entity", "Model", "Camera", "Environment", "Light", "Panel", "Grid", "EditMarker".
---@param entity Entity: a pointer to an entity in the world
---@return string
function world.getType(entity) end

---Find entities by type. Available types are "Entity", "Model", "Camera", "Environment", "Light", "Panel", "Grid", "EditMarker".
---@param type string
---@return Table # a list of entities
function world.findByType(type) end

---Get a 3D ray from a screen position.
---@param screenPosition vec2: the screen position in pixels
---@return ray # ray.origin and ray.direction
function world.getScreenRay(screenPosition) end

---Shoot a ray to see if a model or panel is hit. Optionally specify a tag to restrict the search.
---@param rayOrigin vec3.
---@param rayDirection vec3.
---@param optional [tag] string.
---@return hit hit.entity, hit.distance, hit.hitPoint
function findRaycastHit(rayOrigin, rayDirection, tag) end

---Faster way to find the closest intersection, comes at the cost of returning coarser results that will be imprecise with blocky distances.
---@param rayOrigin vec3
---@param rayDirection vec3
---@return hit # returnHit.entity, returnHit.distance, returnHit.hitPoint
function world.findRaycastHitFast(rayOrigin, rayDirection) end

---Shoot a ray and get a model's normal at the point of intersection.
---@param model Entity: a pointer to a model in the world
---@param rayOrigin vec3
---@param rayDirection vec3
---@return hit # returnHit.success, returnHit.point, returnHit.normal
function world.getModelNormal(model, rayOrigin, rayDirection) end

---Find the closest edit index in a model given a point in space.
---@param model Entity: a pointer to a model in the world
---@param point vec3
---@return edit index, number # The index of an edit inside a model
function world.findClosestEditIndex(model, point) end

---Make a entity. Plain entities are invisible, they are useful if you need a placeholder in space or in case you need to form hierarchies. Joints made in the editor are just hierarchies of entities with special tags to edit them as joints.
---@return Entity # a pointer to an invisible entity in the world
function world.makeEntity() end

---Destroy an entity and all the children attached to it.
---@param entity Entity: a pointer to an entity in the world
function world.destroy(entity) end

---Set the name of an entity.
---@param entity Entity: a pointer to an entity in the world
---@param name string
function world.setName(entity, name) end

---Get the name of an entity.
---@param entity Entity: a pointer to an entity in the world
---@return string
function world.getName(entity) end

---Add a tag to an entity.
---@param entity Entity: a pointer to an entity in the world
---@param tag string
function world.addTag(entity, tag) end

---Remove a tag from an entity if the tag is found.
---@param entity Entity: a pointer to an entity in the world
---@param tag string
function world.removeTag(entity, tag) end

---Check if this entity has a tag.
---@param entity Entity: a pointer to an entity in the world
---@param tag string
---@return bool
function world.hasTag(entity, tag) end

---Get all tags in an entity.
---@param entity Entity: a pointer to an entity in the world
---@return Table # a list of strings
function world.getTags(entity) end

---Set a model to be visible or not.
---@param entity Entity: a pointer to an entity in the world
---@param state boolean
function world.setVisible(entity, state) end

---Get a model to be visible or not.
---@param entity Entity: a pointer to an entity in the world
---@return bool
function world.getVisible(entity) end

---Clone an entity and all its children. Models in this hierarchy will be linked to the source.
---@param entity Entity: a pointer to an entity in the world
---@return Entity # a pointer to an entity in the world, nil if the entity was not found
function world.clone(entity) end

---Deinstance a cloned entity so that modifying it won't reflect on the source.
---@param entity Entity: a pointer to an entity in the world
function world.deinstance(entity) end

---Get the number of cloned instances for this entity.
---@param entity Entity: a pointer to an entity in the world
---@return int
function getInstanceCount(entity) end
