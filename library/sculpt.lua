---@meta

-- Sculpt operations are used to create and change models at runtime.
-- Each model is a volumetric surface made of basic primitives called edits.
-- Changing models at runtime should be done carefully, these operations are heavy on the gpu and might cause slowdowns when used frequently in a game.
sculpt = {}

---Make a new model in order to then add edits to it and form complex shapes, like a teddy bear, or a banana.
---@return Entity # a pointer to a model in the world
function makeModel() end

---Clear all edits inside a model
---@param model Entity: a pointer to a model in the world
function clearEdits(model) end

---Create and add a new edit under a model.
---@param model Entity: a pointer to a model in the world
---@return Edit # a pointer to an Edit
function addEdit(model) end

---Duplicate and add an existing edit from a model under another
---@param model Entity: a pointer to a model in the world
---@param edit Edit: a pointer to an edit
---@return Edit # a pointer to an Edit
function addExistingEdit(model, edit) end

---Get an edit from a model at a given index. Index starts at 1.
---@param model Entity: a pointer to a model in the world
---@param index int: an index to an edit in the list of edits contained in a model
---@return Edit # a pointer to an Edit
function getEdit(model, index) end

---Get how many edits are contained in a model.
---@param model Entity: a pointer to a model in the world
---@return int
function getEditCount(model) end

---Remove edit from the model and destroy it.
---@param edit Edit: a pointer to an edit
function removeEdit(edit) end

---Get the index of an edit from the list of edits inside the parent model.
---@param edit Edit: a pointer to an edit
---@return int
function getEditStackIndex(edit) end

---Once you're done manipulating edits in a model, call this function to re-evaluate the surface and see the results.
---@param model Entity: a pointer to a model in the world
function updateModel(model) end

---Get the local transform of an edit. This is a copy of the transform held by the edit, changing this will have no direct effect on the edit itself.
---@param edit Edit: a pointer to an edit
---@return Transform
function getEditTransform(edit) end

---Set the local transform of an edit.
---@param edit Edit: a pointer to an edit
---@param transform Transform
function setEditTransform(edit, transform) end

---Get the global transform of an edit. This is a copy of the transform held by the edit, changing this will have no direct effect on the edit itself (good if you care about performance).
---@param edit Edit: a pointer to an edit
---@return Transform
function getEditTransformGlobal(edit) end

---Set the global transform or an edit.
---@param edit Edit: a pointer to an edit
---@param transform Transform
function setEditTransformGlobal(edit, transform) end

---Set the position of an edit in its local space (move this edit relative to its parent model).
---@param edit Edit: a pointer to an edit
---@param position vec3
function setEditPosition(edit, position) end

---Get the position of an edit in its local space.
---@param edit Edit: a pointer to an edit
---@return vec3
function getEditPosition(edit) end

---Set the position of an edit in global space (disregards the parent model and move this edit anywhere in the world).
---@param edit Edit: a pointer to an edit
---@param position vec3
function setEditPositionGlobal(edit, position) end

---Get the position of an edit in global space.
---@param edit Edit: a pointer to an edit
---@return vec3
function getEditPositionGlobal(edit) end

---Set the orientation of an edit in its local space (rotate this edit relative to its parent model).
---@param edit Edit: a pointer to an edit
---@param orientation quat
function setEditOrientation(edit, orientation) end

---Get the orientation of an edit in local space.
---@param edit Edit: a pointer to an edit
---@return quat
function getEditOrientation(edit) end

---Set the orientation of an edit in global space.
---@param edit Edit: a pointer to an edit
---@param orientation quat
function setEditOrientationGlobal(edit, orientation) end

---Get the orientation of an edit in global space.
---@param edit Edit: a pointer to an edit
---@return quat
function getEditOrientationGlobal(edit) end

---Set the dimensions of an edit using a vec3 to define width, height and depth.
---@param edit Edit: a pointer to an edit
---@param dim vec3
function setEditDimensions(edit, dim) end

---Get the dimensions of an edit relative to the scale of its parent model.
---@param edit Edit: a pointer to an edit
---@return vec3
function getEditDimensions(edit) end

---Set the color of an edit.
---@param edit Edit: a pointer to an edit
---@param color vec4
function setEditColor(edit, color) end

---Get the color of an edit.
---@param edit Edit: a pointer to an edit
---@return vec4
function getEditColor(edit) end

---Set the blend factor of an edit. Note that edits will only blend with all the other edits that have a lower index in the evalution stack.
---@param edit Edit: a pointer to an edit
---@param value number
function setEditBlend(edit, value) end

---Get the blend factor of an edit.
---@param edit Edit: a pointer to an edit
---@return float
function getEditBlend(edit) end

---Set if an edit will act as subtractive, addtivive or paint.
---@param edit Edit: a pointer to an edit
---@param editOperation int: available values are EDIT_OP_SUBTRACT EDIT_OP_ADD EDIT_OP_PAINT
function setEditOperation(edit, editOperation) end

---Set whether an edit is acting as subtractive, additive or paint.
---@param edit Edit: a pointer to an edit
---@return int
function getEditOperation(edit) end

---Set whether an edit is mirrored on the YZ plane or not.
---@param edit Edit: a pointer to an edit
---@param state boolean
function setEditMirror(edit, state) end

---Get whether an edit is mirrored on the YZ plane or not.
---@param edit Edit: a pointer to an edit
---@return bool
function getEditMirror(edit) end

---Set if an edit should be a box, sphere, curve, n-gon or cone.
---@param edit Edit: a pointer to an edit
---@param shapeType int: available values are EDIT_SHAPE_BOX EDIT_SHAPE_SPHERE EDIT_SHAPE_CURVE EDIT_SHAPE_NGON EDIT_SHAPE_CONE
function setEditShapeType(edit, shapeType) end

---Get the shape type of an edit.
---@param edit Edit: a pointer to an edit
---@return int
function getEditShapeType(edit) end

---Set an edit shape parameter. Each edit shape type has a different set of parameters, you can check the behaviour from the editor.
---@param edit Edit: a pointer to an edit
---@param editParamId int: available values are EDIT_BOX_ROUNDX EDIT_BOX_ROUNDY EDIT_BOX_THICKNESS EDIT_CURVE_SLIDE EDIT_CURVE_WEIGHT EDIT_CURVE_THICKNESS EDIT_NGON_ROUND EDIT_CURVE_SIDES EDIT_CONE_ROUNDX EDIT_CONE_ROUNDY EDIT_CONE_POINTY
---@param value number
function setEditShapeParameter(edit, editParamId, value) end

---Get an edit shape parameter. Each edit shape type has a different set of parameters, you can check the behaviour from the editor.
---@param edit Edit: a pointer to an edit
---@param editParamId int: available values are EDIT_BOX_ROUNDX EDIT_BOX_ROUNDY EDIT_BOX_THICKNESS EDIT_CURVE_SLIDE EDIT_CURVE_WEIGHT EDIT_CURVE_THICKNESS EDIT_NGON_ROUND EDIT_CURVE_SIDES EDIT_CONE_ROUNDX EDIT_CONE_ROUNDY EDIT_CONE_POINTY
---@return float
function getEditShapeParameter(edit, editParamId) end

---Set an edit to be a single shape, a repeated shape or a spline.
---@param edit Edit: a pointer to an edit
---@param editMode int: available values are EDIT_MODE_SHAPE EDIT_MODE_REPEAT EDIT_MODE_SPLINE
function setEditMode(edit, editMode) end

---Get whether an edit is a single shape, a repeated shape or a spline.
---@param edit Edit: a pointer to an edit
---@return int
function getEditMode(edit) end

---Set an offset transform for a repeat edit. This transform determines how the edits are repeated.
---@param edit Edit: a pointer to an edit
---@param offsetTransform
function setRepeatOffset(edit, offsetTransform) end

---Get an offset transform for a repeat edit.
---@param edit Edit: a pointer to an edit
---@return Transform
function getRepeatOffset(edit) end

---Set how many times an edit is repeated when is set to repeat mode.
---@param edit Edit: a pointer to an edit
---@param count int
function setRepeatCount(edit, count) end

---Get how many times an edit is repeated when is set to repeat mode.
---@param edit Edit: a pointer to an edit
---@return int
function getRepeatCount(edit) end

---Create and add a control point to an edit spline. Use setSplinePointTransform to edit the transform created.
---@param edit Edit: a pointer to an edit
function addSplinePoint(edit) end

---Remove and destroy a control point in an edit spline.
---@param edit Edit: a pointer to an edit
---@param pointId int
function removeSplinePoint(edit, pointId) end

---Get how many control points there are in an edit spline.
---@param edit Edit: a pointer to an edit
---@return int
function getSplinePointCount(edit) end

---Set a transform to move, rotate and scale an edit spline control point.
---@param edit Edit: a pointer to an edit
---@param pointId int
---@param transform Transform
function setSplinePointTransform(edit, pointId, transform) end

---Get an edit spline control point.
---@param edit Edit: a pointer to an edit
---@param pointId int
---@return Transform
function getSplinePointTransform(edit, pointId) end

---Set a shape parameter of an edit spline control point.
---@param edit Edit: a pointer to an edit
---@param pointId int
---@param editParamId int: available values are EDIT_BOX_ROUNDX EDIT_BOX_ROUNDY EDIT_BOX_THICKNESS EDIT_CURVE_SLIDE EDIT_CURVE_WEIGHT EDIT_CURVE_THICKNESS EDIT_NGON_ROUND EDIT_CURVE_SIDES EDIT_CONE_ROUNDX EDIT_CONE_ROUNDY EDIT_CONE_POINTY
---@param value number
function setSplinePointShapeParameter(edit, pointId, editParamId, value) end

---Get a shape parameter of an edit spline control point.
---@param edit Edit: a pointer to an edit
---@param pointId
---@param editParamId int: available values are EDIT_BOX_ROUNDX EDIT_BOX_ROUNDY EDIT_BOX_THICKNESS EDIT_CURVE_SLIDE EDIT_CURVE_WEIGHT EDIT_CURVE_THICKNESS EDIT_NGON_ROUND EDIT_CURVE_SIDES EDIT_CONE_ROUNDX EDIT_CONE_ROUNDY EDIT_CONE_POINTY
---@return float
function getSplinePointShapeParameter(edit, pointId, editParamId) end

---Set the dimensions of an edit spline control point.
---@param edit Edit: a pointer to an edit
---@param pointId int
---@param dim
function setSplinePointDimensions(edit, pointId, dim) end

---Get the dimensions of an edit spline control point.
---@param edit Edit: a pointer to an edit
---@param pointId int
---@return vec3
function getSplinePointDimensions(edit, pointId) end

---Set the color of an edit spline control point.
---@param edit Edit: a pointer to an edit
---@param pointId int
---@param color vec4
function setSplinePointColor(edit, pointId, color) end

---Get the color of an edit spline control point.
---@param edit Edit: a pointer to an edit
---@param pointId int
---@return vec4
function getSplinePointColor(edit, pointId) end

---Set the scale of an edit spline.
---@param edit Edit: a pointer to an edit
---@param value number
function setSplineScale(edit, value) end

---Get the scale of an edit spline.
---@param edit Edit: a pointer to an edit
---@return float
function getSplineScale(edit) end

---Make an EditMarker.
function makeEditMarker() end

---Clear all edits in this EditMarker.
---@param editMarker Entity: a pointer to an EditMarker in the world
function clearEditMarker(editMarker) end

---Add an edit to this EditMarker from another model.
---@param editMarker Entity: a pointer to an EditMarker in the world
---@param edit Edit: a pointer to an edit
function editMarkerAddEdit(editMarker, edit) end

---Set the color of all the wireframes visualized by this EditMarker.
---@param editMarker Entity: a pointer to an EditMarker in the world
---@param color vec4
function setEditMarkerColor(editMarker, color) end
