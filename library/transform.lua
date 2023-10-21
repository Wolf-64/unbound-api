---@meta

-- Every Entity uses a Transform to be moved, rotated and scaled.
transform = {}

---Set the position of an entity in its local space (move this entity relative to its parent when there is a parent).
---@param entity Entity: a pointer to an entity in the world
---@param position vec3
function transform.setPosition(entity, position) end

---Get the position of an entity in its local space.
---@param entity Entity: a pointer to an entity in the world
---@return vec3
function transform.getPosition(entity) end

---Set the position of an entity in global space (disregards the parent and move this entity anywhere in the world).
---@param entity Entity: a pointer to an entity in the world
---@param position vec3
function transform.setPositionGlobal(entity, position) end

---Get the position of an entity in its global space.
---@param entity Entity: a pointer to an entity in the world
---@return vec3
function transform.getPositionGlobal(entity) end

---Set the orientation of an entity in its local space (rotate this entity relative to its parent when there is a parent).
---@param entity Entity: a pointer to an entity in the world
---@param orientation quat
function transform.setOrientation(entity, orientation) end

---Get the orientation of an entity in its local space.
---@param entity Entity: a pointer to an entity in the world
---@return quat
function transform.getOrientation(entity) end

---Set the position of an entity in global space (disregards the parent and move this entity anywhere in the world).
---@param entity Entity: a pointer to an entity in the world
---@param orientation quat
function transform.setOrientationGlobal(entity, orientation) end

---Get the orientation of an entity in its global space.
---@param entity Entity: a pointer to an entity in the world
---@return quat
function transform.getOrientationGlobal(entity) end

---Set the scale of an entity in local space (scale this entity relative to its parent when there is a parent).
---@param entity Entity: a pointer to an entity in the world
---@param scale float: a single number representing the uniform scale of the entity
function transform.setScale(entity, scale) end

---Get the scale of an entity in local space.
---@param entity Entity: a pointer to an entity in the world
---@return float
function transform.getScale(entity) end

---Set the scale of an entity in global space (disregards the parent and scale this entity in world space).
---@param entity Entity: a pointer to an entity in the world
---@param scale float: a single number representing the uniform scale of the entity
function transform.setScaleGlobal(entity, scale) end

---Get the scale of an entity in global space.
---@param entity Entity: a pointer to an entity in the world
---@return float
function transform.getScaleGlobal(entity) end

---Set a transform for an entity in local space.
---@param entity Entity: a pointer to an entity in the world
---@param transform Transform
function transform.setTransform(entity, transform) end

---Get the local transform of an entity. This is a copy of the transform held by the entity, changing this will not have any direct effect on the entity itself.
---@param entity Entity: a pointer to an entity in the world
---@return Transform
function transform.getTransform(entity) end

---Set a transform for entity in global space.
---@param entity Entity: a pointer to an entity in the world
---@param transform Transform
function transform.setTransformGlobal(entity, transform) end

---Get the global transform of an entity. This is a copy of the transform held by the entity, changing this won't have any effect on the entity itself.
---@param entity Entity: a pointer to an entity in the world
---@return Transform
function transform.getTransformGlobal(entity) end

---Set a transform to be in the local space of another transform. It's as if transform becomes a child of otherTransform. The result is set back into transform itself.
function transform.setRelativeTo(transform, otherTransform) end

---Get a position in the local space of a transform.
---@param point vec3
---@param transform Transform
---@return vec3
function transform.positionToLocal(point, transform) end

---Get an orientation in the local space of a transform.
---@param orientation quat
---@param transform Transform
---@return quat
function transform.orientationToLocal(orientation, transform) end

---Mirror a transform from the YZ plane.
---@param transform Transform
function transform.mirrorYZ(transform) end

---Get the forward axis vector from a transform.
---@param entityOrTransform Entity or Transform
---@return vec3
function transform.forwardAxis(entityOrTransform) end

---Get the up axis vector from a transform.
---@param entityOrTransform Entity or Transform
---@return vec3
function transform.upAxis(entityOrTransform) end

---Get the right axis vector from a transform.
---@param entityOrTransform Entity or Transform
---@return vec3
function transform.rightAxis(entityOrTransform) end

---Rotate a transform around its forward axis.
---@param entityOrTransform Entity or Transform
---@param value number
function transform.pitchBy(entityOrTransform, value) end

---Rotate a transform around its up axis.
---@param entityOrTransform Entity or Transform
---@param value number
function transform.yawBy(entityOrTransform, value) end

---Rotate a transform around its right axis.
---@param entityOrTransform Entity or Transform
---@param value number
function transform.rollBy(entityOrTransform, value) end

---Create a quaternion rotation from two vec3 (vectors must be normalized).
---@param forwardVec
---@param upVec
---@return quat
function lookAtOrientation(forwardVec, upVec) end
