---@meta

-- Handling any kind of input action coming from mouse, keyboard or game controllers.
input = {}

---Get if a mouse button got pressed at the current frame.
---@param mouseButton int available values are MOUSE_BUTTON_LEFT MOUSE_BUTTON_MID MOUSE_BUTTON_RIGHT.
---@return bool
function getMouseButtonPressed(mouseButton) end

---Get if a mouse button is currently being held down.
---@param mouseButton int available values are MOUSE_BUTTON_LEFT MOUSE_BUTTON_MID MOUSE_BUTTON_RIGHT.
---@return bool
function getMouseButtonDown(mouseButton) end

---Get if a mouse button got released at the current frame.
---@param mouseButton int available values are MOUSE_BUTTON_LEFT MOUSE_BUTTON_MID MOUSE_BUTTON_RIGHT.
---@return bool
function getMouseButtonReleased(mouseButton) end

---Get the screen position of the mouse.
---@return vec2
function getMousePosition() end

---Get the mouse wheel motion.
---@return float
function getMouseWheelDelta() end

---Set the mouse to disappear and trap it inside the window. Useful when making a first person game.
---@param state boolean.
function setMouseRelativeMode(state) end

---Get whether the mouse is set to relative mode.
---@return bool
function getMouseRelativeMode() end

---Get the relative motion of the mouse from the previous frame.
---@return vec2
function getMouseRelativeMotion() end

---Check if a key got pressed at the currentr frame.
---@param key .
---@return bool
function getKeyPressed(key) end

---Check if a key got released at the current frame.
---@param key .
---@return bool
function getKeyReleased(key) end

---Check if a key is currently being held down.
---@param key .
---@return bool
function getKeyDown(key) end

---Get text as it's being typed on the keyboard.
---@return string
function getTextInput() end

