---@meta

-- Entities can be organized in hierarchies. When an entity is attached to another it becomes a child, while the entity nesting children is called a parent.
-- Hierarchies are a convenient way to transform multiple entities from a single parent.
hierarchy = {}

---Set an entity to be the child of another.
---@param child Entity: the entity about to become a child
---@param parent Entity: the entity that will be parent
function attach(child, parent) end

---Detach an entity from its parent, or do nothing if the entity has no parent.
---@param entity Entity: a pointer to an entity in the world
function detach(entity) end

---Get an entity's parent.
---@param entity Entity: a pointer to an entity in the world
---@return Entity # a pointer to an entity in the world, nil if the entity was not found
function getParent(entity) end

---Get the children of an entity.
---@param entity Entity: a pointer to an entity in the world
---@return Table # a list of children
function getChildren(entity) end
