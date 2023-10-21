---@meta

-- System stuff.
system = {}

---Get the time since the PlayScript started.
---@return float
function getDeltaTime() end

---Get the time since the last frame was updated.
---@return float
function getDeltaTime() end

---Copy some text to the system clipboard.
---@param text
function copyTextToClipboard(text) end

---Get text currently in the system clipboard.
---@return string
function getTextFromClipboard() end

---Set a preference that will be stored on disk to persist across executions of your PlayScript.
---@param key string
---@param value number
function setPreference(key, value) end

---Get a preference.
---@param key string
---@return bool, string or number
function getPreference(key) end

---Get a global preference.
---@param key string
---@return bool, string or number
function getGlobalPreference(key) end

---Invoke a callback whenever a preference is changed.
---@param callback function()
function setOnPreferencesChanged(callback) end

---key, .
---@param value number
function System.setGlobalPreference(key, value) end
