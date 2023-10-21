---@meta

-- Sculpt operations are used to create and change models at runtime.
-- Each model is a volumetric surface made of basic primitives called edits.
-- Changing models at runtime should be done carefully, these operations are heavy on the gpu and might cause slowdowns when used frequently in a game.
sculpt = {}

---Make a new model in order to then add edits to it and form complex shapes, like a teddy bear, or a banana.
---@return Entity # a pointer to a model in the world
function sculpt.makeModel() end

---Clear all edits inside a model
---@param model Entity: a pointer to a model in the world
function sculpt.clearEdits(model) end

---Create and add a new edit under a model.
---@param model Entity: a pointer to a model in the world
---@return Edit # a pointer to an Edit
function sculpt.addEdit(model) end

---Duplicate and add an existing edit from a model under another
---@param model Entity: a pointer to a model in the world
---@param edit Edit: a pointer to an edit
---@return Edit # a pointer to an Edit
function sculpt.addExistingEdit(model, edit) end

---Get an edit from a model at a given index. Index starts at 1.
---@param model Entity: a pointer to a model in the world
---@param index int: an index to an edit in the list of edits contained in a model
---@return Edit # a pointer to an Edit
function sculpt.getEdit(model, index) end

---Get how many edits are contained in a model.
---@param model Entity: a pointer to a model in the world
---@return int
function sculpt.getEditCount(model) end

---Remove edit from the model and destroy it.
---@param edit Edit: a pointer to an edit
function sculpt.removeEdit(edit) end

---Get the index of an edit from the list of edits inside the parent model.
---@param edit Edit: a pointer to an edit
---@return int
function sculpt.getEditStackIndex(edit) end

---Once you're done manipulating edits in a model, call this function to re-evaluate the surface and see the results.
---@param model Entity: a pointer to a model in the world
function sculpt.updateModel(model) end

---Get the local transform of an edit. This is a copy of the transform held by the edit, changing this will have no direct effect on the edit itself.
---@param edit Edit: a pointer to an edit
---@return Transform
function sculpt.getEditTransform(edit) end

---Set the local transform of an edit.
---@param edit Edit: a pointer to an edit
---@param transform Transform
function sculpt.setEditTransform(edit, transform) end

---Get the global transform of an edit. This is a copy of the transform held by the edit, changing this will have no direct effect on the edit itself (good if you care about performance).
---@param edit Edit: a pointer to an edit
---@return Transform
function sculpt.getEditTransformGlobal(edit) end

---Set the global transform or an edit.
---@param edit Edit: a pointer to an edit
---@param transform Transform
function sculpt.setEditTransformGlobal(edit, transform) end

---Set the position of an edit in its local space (move this edit relative to its parent model).
---@param edit Edit: a pointer to an edit
---@param position vec3
function sculpt.setEditPosition(edit, position) end

---Get the position of an edit in its local space.
---@param edit Edit: a pointer to an edit
---@return vec3
function sculpt.getEditPosition(edit) end

---Set the position of an edit in global space (disregards the parent model and move this edit anywhere in the world).
---@param edit Edit: a pointer to an edit
---@param position vec3
function sculpt.setEditPositionGlobal(edit, position) end

---Get the position of an edit in global space.
---@param edit Edit: a pointer to an edit
---@return vec3
function sculpt.getEditPositionGlobal(edit) end

---Set the orientation of an edit in its local space (rotate this edit relative to its parent model).
---@param edit Edit: a pointer to an edit
---@param orientation quat
function sculpt.setEditOrientation(edit, orientation) end

---Get the orientation of an edit in local space.
---@param edit Edit: a pointer to an edit
---@return quat
function sculpt.getEditOrientation(edit) end

---Set the orientation of an edit in global space.
---@param edit Edit: a pointer to an edit
---@param orientation quat
function sculpt.setEditOrientationGlobal(edit, orientation) end

---Get the orientation of an edit in global space.
---@param edit Edit: a pointer to an edit
---@return quat
function sculpt.getEditOrientationGlobal(edit) end

---Set the dimensions of an edit using a vec3 to define width, height and depth.
---@param edit Edit: a pointer to an edit
---@param dim vec3
function sculpt.setEditDimensions(edit, dim) end

---Get the dimensions of an edit relative to the scale of its parent model.
---@param edit Edit: a pointer to an edit
---@return vec3
function sculpt.getEditDimensions(edit) end

---Set the color of an edit.
---@param edit Edit: a pointer to an edit
---@param color vec4
function sculpt.setEditColor(edit, color) end

---Get the color of an edit.
---@param edit Edit: a pointer to an edit
---@return vec4
function sculpt.getEditColor(edit) end

---Set the blend factor of an edit. Note that edits will only blend with all the other edits that have a lower index in the evalution stack.
---@param edit Edit: a pointer to an edit
---@param value number
function sculpt.setEditBlend(edit, value) end

---Get the blend factor of an edit.
---@param edit Edit: a pointer to an edit
---@return float
function sculpt.getEditBlend(edit) end

---Set if an edit will act as subtractive, addtivive or paint.
---@param edit Edit: a pointer to an edit
---@param editOperation int: available values are EDIT_OP_SUBTRACT EDIT_OP_ADD EDIT_OP_PAINT
function sculpt.setEditOperation(edit, editOperation) end

---Set whether an edit is acting as subtractive, additive or paint.
---@param edit Edit: a pointer to an edit
---@return int
function sculpt.getEditOperation(edit) end

---Set whether an edit is mirrored on the YZ plane or not.
---@param edit Edit: a pointer to an edit
---@param state boolean
function sculpt.setEditMirror(edit, state) end

---Get whether an edit is mirrored on the YZ plane or not.
---@param edit Edit: a pointer to an edit
---@return bool
function sculpt.getEditMirror(edit) end

---Set if an edit should be a box, sphere, curve, n-gon or cone.
---@param edit Edit: a pointer to an edit
---@param shapeType int: available values are EDIT_SHAPE_BOX EDIT_SHAPE_SPHERE EDIT_SHAPE_CURVE EDIT_SHAPE_NGON EDIT_SHAPE_CONE
function sculpt.setEditShapeType(edit, shapeType) end

---Get the shape type of an edit.
---@param edit Edit: a pointer to an edit
---@return int
function sculpt.getEditShapeType(edit) end

---Set an edit shape parameter. Each edit shape type has a different set of parameters, you can check the behaviour from the editor.
---@param edit Edit: a pointer to an edit
---@param editParamId int: available values are EDIT_BOX_ROUNDX EDIT_BOX_ROUNDY EDIT_BOX_THICKNESS EDIT_CURVE_SLIDE EDIT_CURVE_WEIGHT EDIT_CURVE_THICKNESS EDIT_NGON_ROUND EDIT_CURVE_SIDES EDIT_CONE_ROUNDX EDIT_CONE_ROUNDY EDIT_CONE_POINTY
---@param value number
function sculpt.setEditShapeParameter(edit, editParamId, value) end

---Get an edit shape parameter. Each edit shape type has a different set of parameters, you can check the behaviour from the editor.
---@param edit Edit: a pointer to an edit
---@param editParamId int: available values are EDIT_BOX_ROUNDX EDIT_BOX_ROUNDY EDIT_BOX_THICKNESS EDIT_CURVE_SLIDE EDIT_CURVE_WEIGHT EDIT_CURVE_THICKNESS EDIT_NGON_ROUND EDIT_CURVE_SIDES EDIT_CONE_ROUNDX EDIT_CONE_ROUNDY EDIT_CONE_POINTY
---@return float
function sculpt.getEditShapeParameter(edit, editParamId) end

---Set an edit to be a single shape, a repeated shape or a spline.
---@param edit Edit: a pointer to an edit
---@param editMode int: available values are EDIT_MODE_SHAPE EDIT_MODE_REPEAT EDIT_MODE_SPLINE
function sculpt.setEditMode(edit, editMode) end

---Get whether an edit is a single shape, a repeated shape or a spline.
---@param edit Edit: a pointer to an edit
---@return int
function sculpt.getEditMode(edit) end

---Set an offset transform for a repeat edit. This transform determines how the edits are repeated.
---@param edit Edit: a pointer to an edit
---@param offsetTransform
function sculpt.setRepeatOffset(edit, offsetTransform) end

---Get an offset transform for a repeat edit.
---@param edit Edit: a pointer to an edit
---@return Transform
function sculpt.getRepeatOffset(edit) end

---Set how many times an edit is repeated when is set to repeat mode.
---@param edit Edit: a pointer to an edit
---@param count int
function sculpt.setRepeatCount(edit, count) end

---Get how many times an edit is repeated when is set to repeat mode.
---@param edit Edit: a pointer to an edit
---@return int
function sculpt.getRepeatCount(edit) end

---Create and add a control point to an edit spline. Use setSplinePointTransform to edit the transform created.
---@param edit Edit: a pointer to an edit
function sculpt.addSplinePoint(edit) end

---Remove and destroy a control point in an edit spline.
---@param edit Edit: a pointer to an edit
---@param pointId int
function sculpt.removeSplinePoint(edit, pointId) end

---Get how many control points there are in an edit spline.
---@param edit Edit: a pointer to an edit
---@return int
function sculpt.getSplinePointCount(edit) end

---Set a transform to move, rotate and scale an edit spline control point.
---@param edit Edit: a pointer to an edit
---@param pointId int
---@param transform Transform
function sculpt.setSplinePointTransform(edit, pointId, transform) end

---Get an edit spline control point.
---@param edit Edit: a pointer to an edit
---@param pointId int
---@return Transform
function sculpt.getSplinePointTransform(edit, pointId) end

---Set a shape parameter of an edit spline control point.
---@param edit Edit: a pointer to an edit
---@param pointId int
---@param editParamId int: available values are EDIT_BOX_ROUNDX EDIT_BOX_ROUNDY EDIT_BOX_THICKNESS EDIT_CURVE_SLIDE EDIT_CURVE_WEIGHT EDIT_CURVE_THICKNESS EDIT_NGON_ROUND EDIT_CURVE_SIDES EDIT_CONE_ROUNDX EDIT_CONE_ROUNDY EDIT_CONE_POINTY
---@param value number
function sculpt.setSplinePointShapeParameter(edit, pointId, editParamId, value) end

---Get a shape parameter of an edit spline control point.
---@param edit Edit: a pointer to an edit
---@param pointId
---@param editParamId int: available values are EDIT_BOX_ROUNDX EDIT_BOX_ROUNDY EDIT_BOX_THICKNESS EDIT_CURVE_SLIDE EDIT_CURVE_WEIGHT EDIT_CURVE_THICKNESS EDIT_NGON_ROUND EDIT_CURVE_SIDES EDIT_CONE_ROUNDX EDIT_CONE_ROUNDY EDIT_CONE_POINTY
---@return float
function sculpt.getSplinePointShapeParameter(edit, pointId, editParamId) end

---Set the dimensions of an edit spline control point.
---@param edit Edit: a pointer to an edit
---@param pointId int
---@param dim
function sculpt.setSplinePointDimensions(edit, pointId, dim) end

---Get the dimensions of an edit spline control point.
---@param edit Edit: a pointer to an edit
---@param pointId int
---@return vec3
function sculpt.getSplinePointDimensions(edit, pointId) end

---Set the color of an edit spline control point.
---@param edit Edit: a pointer to an edit
---@param pointId int
---@param color vec4
function sculpt.setSplinePointColor(edit, pointId, color) end

---Get the color of an edit spline control point.
---@param edit Edit: a pointer to an edit
---@param pointId int
---@return vec4
function sculpt.getSplinePointColor(edit, pointId) end

---Set the scale of an edit spline.
---@param edit Edit: a pointer to an edit
---@param value number
function sculpt.setSplineScale(edit, value) end

---Get the scale of an edit spline.
---@param edit Edit: a pointer to an edit
---@return float
function sculpt.getSplineScale(edit) end

---Make an EditMarker.
function sculpt.makeEditMarker() end

---Clear all edits in this EditMarker.
---@param editMarker Entity: a pointer to an EditMarker in the world
function sculpt.clearEditMarker(editMarker) end

---Add an edit to this EditMarker from another model.
---@param editMarker Entity: a pointer to an EditMarker in the world
---@param edit Edit: a pointer to an edit
function sculpt.editMarkerAddEdit(editMarker, edit) end

---Set the color of all the wireframes visualized by this EditMarker.
---@param editMarker Entity a pointer to an EditMarker in the world.
---@param color vec4.
function setEditMarkerColor(editMarker, color) end
