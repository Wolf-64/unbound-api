---@meta

-- User interfaces in unbound are made using panels.
-- Panels are entities that show as a flat surface, they can be visualized in 3d or 2d, they can display colors, borders and text.
user interface = {}

---Get the window size.
---@return vec2
function getWindowSize() end

---Set a callback for when the mouse is clicked anywhere in the window.
---@param callback function().
function setWindowOnMouseDown(callback) end

---Set a callback for when the mouse is moved anywhere in the window.
---@param callback function().
function setWindowOnMouseMove(callback) end

---Set a callback for when the mouse click is released anywhere in the window.
---@param callback function().
function setWindowOnMouseUp(callback) end

---Make a panel. Panels are flat colored surfaces that can be displayed in 3D or 2D.
---Make a panel. Panels are flat colored surfaces that can be displayed in 3D or 2D.
---@return Entity a pointer to a panel in the world
function makePanel() end

---Set whether a panel should is displayed as 2D.
---@param panel .
---@param state boolean.
function setPanelOverlay(panel, state) end

---Get whether a panel is be displayed as 2D.
---@param panel .
---@return bool
function getPanelOverlay(panel) end

---Set the corner radius of a panel.
---@param panel .
---@param value number.
function setPanelCornerRadius(panel, value) end

---Get the corner radius of a panel.
---@param panel .
---@return float
function getPanelCornerRadius(panel) end

---Set the color of a panel.
---@param panel .
---@param color vec4.
function setPanelColor(panel, color) end

---Get the color of a panel.
---@param panel .
---@return vec4
function getPanelColor(panel) end

---Set the text displayed in a panel.
---@param panel .
---@param text .
function setPanelText(panel, text) end

---Get the text displayed in a panel.
---@param panel .
---@return string
function getPanelText(panel) end

---Set a panel text color.
---@param panel .
---@param color vec4.
function setPanelTextColor(panel, color) end

---Get a panel text color.
---@param panel .
---@return vec4
function getPanelTextColor(panel) end

---Set a panel text font size.
---@param panel .
---@param value number.
function setPanelFontSize(panel, value) end

---Get a panel text font size.
---@param panel .
---@return float
function getPanelFontSize(panel) end

---Set a panel text horizontal alignment.
---@param panel .
---@param align .
function setPanelTextAlignHorizontal(panel, align) end

---Set a panel text vertical alignment.
---@param panel .
---@param align .
function setPanelTextAlignVertical(panel, align) end

---Set whether the panel text is wrapped or not.
---@param panel .
---@param state boolean.
function setPanelTextWrapLines(panel, state) end

---Set a panel border thickness.
---@param panel .
---@param value number.
function setPanelBorder(panel, value) end

---Get a panel text font size.
---@param panel .
---@return float
function getPanelBorder(panel) end

---Set a panel border color.
---@param panel .
---@param color vec4.
function setPanelBorderColor(panel, color) end

---Get a panel border color.
---@param panel .
---@return vec4
function getPanelBorderColor(panel) end

---Set a panel dimensions.
---@param panel .
---@param dim .
function setPanelDimensions(panel, dim) end

---Get a panel dimensions.
---@param panel .
---@return vec2
function getPanelDimensions(panel) end

---Set a panel to cut out all its children panels. Useful to make UIs where a panel contains another panels.
---@param panel .
---@param state boolean.
function setPanelScissor(panel, state) end

---Set a callback for when a panel is clicked.
---@param panel .
---@param callback function().
function setPanelOnMouseDown(panel, callback) end

---Set a callback for when a panel mouse click is released.
---@param panel .
---@param callback function().
function setPanelOnMouseUp(panel, callback) end

---Set a callback for when the mouse enters a panel.
---@param panel .
---@param callback function().
function setPanelOnMouseEnter(panel, callback) end

---Set a callback for when the mouse leaves a panel.
---@param panel .
---@param callback function().
function setPanelOnMouseLeave(panel, callback) end

---Set a callback for when the mouse is moving inside a panel.
---@param panel .
---@param callback function().
function setPanelOnMouseMove(panel, callback) end

---Set a panel to become a text editor.
---@param panel .
function setPanelAsTextEditor(panel) end

---Set if a panel text editor should be editable.
---@param panel .
---@param state boolean.
function setPanelTextEditEnabled(panel, state) end

---Send a mouse-down action to a panel text editor.
---@param panel .
---@param position vec3.
function sendMouseDownToTextEditor(panel, position) end

---Send a mouse-move action to a panel text editor.
---@param panel .
---@param position vec3.
function sendMouseMoveToTextEditor(panel, position) end

---Send a mouse-up action to a panel text editor.
---@param panel .
---@param position vec3.
function sendMouseUpToTextEditor(panel, position) end

---Send a mouse-scroll action to a panel text editor.
---@param panel .
---@param value number.
function sendMouseScrollToTextEditor(panel, value) end

---Send a char to a panel text editor.
---@param panel .
---@param text .
function sendCharToTextEditor(panel, text) end

---Send a key-down action to a panel text editor.
---@param panel .
---@param keyCode .
---@param ctrlPressed .
---@param shiftPressed .
---@param altPressed .
function sendKeyDownToTextEditor(panel, keyCode, ctrlPressed, shiftPressed, altPressed) end

