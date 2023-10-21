---@meta

-- User interfaces in unbound are made using panels.
-- Panels are entities that show as a flat surface, they can be visualized in 3d or 2d, they can display colors, borders and text.
userInterface = {}

---Get the window size.
---@return vec2
function userInterface.getWindowSize() end

---Set a callback for when the mouse is clicked anywhere in the window.
---@param callback function()
function userInterface.setWindowOnMouseDown(callback) end

---Set a callback for when the mouse is moved anywhere in the window.
---@param callback function()
function userInterface.setWindowOnMouseMove(callback) end

---Set a callback for when the mouse click is released anywhere in the window.
---@param callback function()
function userInterface.setWindowOnMouseUp(callback) end

---Make a panel. Panels are flat colored surfaces that can be displayed in 3D or 2D.
function userInterface.makePanel() end

---Set whether a panel should is displayed as 2D.
---@param panel
---@param state boolean
function userInterface.setPanelOverlay(panel, state) end

---Get whether a panel is be displayed as 2D.
---@param panel
---@return bool
function userInterface.getPanelOverlay(panel) end

---Set the corner radius of a panel.
---@param panel
---@param value number
function userInterface.setPanelCornerRadius(panel, value) end

---Get the corner radius of a panel.
---@param panel
---@return float
function userInterface.getPanelCornerRadius(panel) end

---Set the color of a panel.
---@param panel
---@param color vec4
function userInterface.setPanelColor(panel, color) end

---Get the color of a panel.
---@param panel
---@return vec4
function userInterface.getPanelColor(panel) end

---Set the text displayed in a panel.
---@param panel
---@param text
function userInterface.setPanelText(panel, text) end

---Get the text displayed in a panel.
---@param panel
---@return string
function userInterface.getPanelText(panel) end

---Set a panel text color.
---@param panel
---@param color vec4
function userInterface.setPanelTextColor(panel, color) end

---Get a panel text color.
---@param panel
---@return vec4
function userInterface.getPanelTextColor(panel) end

---Set a panel text font size.
---@param panel
---@param value number
function userInterface.setPanelFontSize(panel, value) end

---Get a panel text font size.
---@param panel
---@return float
function userInterface.getPanelFontSize(panel) end

---Set a panel text horizontal alignment.
---@param panel
---@param align
function userInterface.setPanelTextAlignHorizontal(panel, align) end

---Set a panel text vertical alignment.
---@param panel
---@param align
function userInterface.setPanelTextAlignVertical(panel, align) end

---Set whether the panel text is wrapped or not.
---@param panel
---@param state boolean
function userInterface.setPanelTextWrapLines(panel, state) end

---Set a panel border thickness.
---@param panel
---@param value number
function userInterface.setPanelBorder(panel, value) end

---Get a panel text font size.
---@param panel
---@return float
function userInterface.getPanelBorder(panel) end

---Set a panel border color.
---@param panel
---@param color vec4
function userInterface.setPanelBorderColor(panel, color) end

---Get a panel border color.
---@param panel
---@return vec4
function userInterface.getPanelBorderColor(panel) end

---Set a panel dimensions.
---@param panel
---@param dim
function userInterface.setPanelDimensions(panel, dim) end

---Get a panel dimensions.
---@param panel
---@return vec2
function userInterface.getPanelDimensions(panel) end

---Set a panel to cut out all its children panels. Useful to make UIs where a panel contains another panels.
---@param panel
---@param state boolean
function userInterface.setPanelScissor(panel, state) end

---Set a callback for when a panel is clicked.
---@param panel
---@param callback function()
function userInterface.setPanelOnMouseDown(panel, callback) end

---Set a callback for when a panel mouse click is released.
---@param panel
---@param callback function()
function userInterface.setPanelOnMouseUp(panel, callback) end

---Set a callback for when the mouse enters a panel.
---@param panel
---@param callback function()
function userInterface.setPanelOnMouseEnter(panel, callback) end

---Set a callback for when the mouse leaves a panel.
---@param panel
---@param callback function()
function userInterface.setPanelOnMouseLeave(panel, callback) end

---Set a callback for when the mouse is moving inside a panel.
---@param panel
---@param callback function()
function userInterface.setPanelOnMouseMove(panel, callback) end

---Set a panel to become a text editor.
---@param panel
function userInterface.setPanelAsTextEditor(panel) end

---Set if a panel text editor should be editable.
---@param panel
---@param state boolean
function userInterface.setPanelTextEditEnabled(panel, state) end

---Send a mouse-down action to a panel text editor.
---@param panel
---@param position vec3
function userInterface.sendMouseDownToTextEditor(panel, position) end

---Send a mouse-move action to a panel text editor.
---@param panel
---@param position vec3
function userInterface.sendMouseMoveToTextEditor(panel, position) end

---Send a mouse-up action to a panel text editor.
---@param panel
---@param position vec3
function userInterface.sendMouseUpToTextEditor(panel, position) end

---Send a mouse-scroll action to a panel text editor.
---@param panel
---@param value number
function userInterface.sendMouseScrollToTextEditor(panel, value) end

---Send a char to a panel text editor.
---@param panel
---@param text
function userInterface.sendCharToTextEditor(panel, text) end

---Send a key-down action to a panel text editor.
---@param panel
---@param keyCode
---@param ctrlPressed
---@param shiftPressed
---@param altPressed
function userInterface.sendKeyDownToTextEditor(panel, keyCode, ctrlPressed, shiftPressed, altPressed) end
