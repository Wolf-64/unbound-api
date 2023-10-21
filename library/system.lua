---@meta

-- System stuff.
system = {}

---Get the time since the PlayScript started.
---@return float
function system.getDeltaTime() end

---Get the time since the last frame was updated.
---@return float
function system.getDeltaTime() end

---Copy some text to the system clipboard.
---@param text
function system.copyTextToClipboard(text) end

---Get text currently in the system clipboard.
---@return string
function system.getTextFromClipboard() end

---Set a preference that will be stored on disk to persist across executions of your PlayScript.
---@param key string
---@param value number
function system.setPreference(key, value) end

---Get a preference.
---@param key string
---@return bool, string or number
function system.getPreference(key) end

---Get a global preference.
---@param key string
---@return bool, string or number
function system.getGlobalPreference(key) end

---Invoke a callback whenever a preference is changed.
---@param callback function()
function system.setOnPreferencesChanged(callback) end

function System.setGlobalPreference(key, value) end
