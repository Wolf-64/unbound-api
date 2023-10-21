---@meta

-- Models are the things you see when you sculpt or play a game.
-- Whether it is a ball, a cow or a space-ship, these are volumetric models made up of many primitives fused together.
model = {}

---Set how much metalness to give to a model. Range is 0.0 to 1.0.
---@param model Entity: a pointer to a model in the world
---@param value number
function model.setModelMetalness(model, value) end

---Get the metalness of a model.
---@param model Entity: a pointer to a model in the world
---@return float
function model.getModelMetalness(model) end

---Set how much roughness to give to a model. Range is 0.0 to 1.0.
---@param model Entity: a pointer to a model in the world
---@param value number
function model.setModelRoughness(model, value) end

---Get the roughness of a model.
---@param model Entity: a pointer to a model in the world
---@return float
function model.getModelRoughness(model) end

---Set how much emission to give to a model.
---@param model Entity: a pointer to a model in the world
---@param value number
function model.setModelEmission(model, value) end

---Get the emission of a model.
---@param model Entity: a pointer to a model in the world
---@return vec4 # The xyz components are used for color and the w component is used for emission. All values in 0.0 to 1.0 range
function model.getModelEmission(model) end

---Set which splat pattern to use for this model.
function model.setModelSplatPattern(model, value) end

---Get get the index of the splat pattern.
---@param model Entity: a pointer to a model in the world
---@return int
function model.getModelSplatPattern(model) end

---Set splat scale. Range is 0.0 to 1.0.
---@param model Entity: a pointer to a model in the world
---@param value number
function model.setModelSplatScale(model, value) end

---Get splat scale.
---@param model Entity: a pointer to a model in the world
---@return float
function model.getModelSplatScale(model) end

---Set splat density. Range is 0.0 to 1.0.
---@param model Entity: a pointer to a model in the world
---@param value number
function model.setModelSplatDensity(model, value) end

---Get splat density.
---@param model Entity: a pointer to a model in the world
---@return float
function model.getModelSplatDensity(model) end

---Set splat jitter position amount. Range is 0.0 to 1.0.
---@param model Entity: a pointer to a model in the world
---@param value number
function model.setModelSplatJitterPosition(model, value) end

---Get splat jitter position amount.
---@param model Entity: a pointer to a model in the world
---@return float
function model.getModelSplatJitterPosition(model) end

---Set splat jitter orientation amount. Range is 0.0 to 1.0.
---@param model Entity: a pointer to a model in the world
---@param value number
function model.setModelSplatJitterOrientation(model, value) end

---Get splat jitter orientation amount.
---@param model Entity: a pointer to a model in the world
---@return float
function model.getModelSplatJitterOrientation(model) end

---Set splat jitter scale amount. Range is 0.0 to 1.0.
---@param model Entity: a pointer to a model in the world
---@param value number
function model.setModelSplatJitterScale(model, value) end

---Get splat jitter scale amount.
---@param model Entity: a pointer to a model in the world
---@return float
function model.getModelSplatJitterScale(model) end

---Set splat jitter brightness amount. Range is 0.0 to 1.0.
---@param model Entity: a pointer to a model in the world
---@param value number
function model.setModelSplatJitterBrightness(model, value) end

---Get splat jitter brightness amount.
---@param model Entity: a pointer to a model in the world
---@return float
function model.getModelSplatJitterBrightness(model) end

---Set splat jitter hue amount. Range is 0.0 to 1.0.
---@param model Entity: a pointer to a model in the world
---@param value number
function model.setModelSplatJitterHue(model, value) end

---Get splat jitter hue amount.
---@param model Entity: a pointer to a model in the world
---@return float
function model.getModelSplatJitterHue(model) end

---Set splat jitter metalness amount. Range is 0.0 to 1.0.
---@param model Entity: a pointer to a model in the world
---@param value number
function model.setModelSplatJitterMetalness(model, value) end

---Get splat jitter metalness amount.
---@param model Entity: a pointer to a model in the world
---@return float
function model.getModelSplatJitterMetalness(model) end

---Set splat jitter bump amount. Range is 0.0 to 1.0.
---@param model Entity: a pointer to a model in the world
---@param value number
function model.setModelSplatJitterBump(model, value) end

---Get splat jitter bump amount.
---@param model Entity: a pointer to a model in the world
---@return float
function model.getModelSplatJitterBump(model) end

---Set how fluffy are the splats. Range is 0.0 to 1.0.
---@param model Entity: a pointer to a model in the world
---@param value number
function model.setModelSplatFluff(model, value) end

---Get how fluffy are the splats. Range is 0.0 to 1.0
---@param model Entity: a pointer to a model in the world
---@return float
function model.getModelSplatFluff(model) end

---Set if this model has a visible border to highlight a selection.
---@param model Entity: a pointer to a model in the world
---@param state boolean
function model.setModelBorderVisible(model, state) end

---Get if this model has a visible border.
---@param model Entity: a pointer to a model in the world
---@return bool
function getModelBorderVisible(model) end
