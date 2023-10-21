---@meta

-- Everything you need to make games using math!
math = {}

---Angle between vectors in radians.
---@param vec1 vec3
---@param vec2 vec3
---@return float
function math.angle(vec1, vec2) end

---Build a quaternion from an angle and an axis.
---@param value number
---@param vec vec3
---@return quat
function math.angleAxis(value, vec) end

---Convert a quaternion to euler angles.
---@param orientation quat
---@return vec3
function math.eulerAngles(orientation) end

---Measures the length of a vector.
---@param vec vec3
---@return float
function math.length(vec) end

---Measures the distance between two vectors.
---@param vec1 vec3
---@param vec2 vec3
---@return float
function math.distance(vec1, vec2) end

---Normalize a vector.
---@param vec vec3
---@return vec3
function math.normalize(vec) end

---Invert a vector.
---@param vec vec3
---@return vec3
function math.inverse(vec) end

---Cross product between vectors.
---@param vec1 vec3
---@param vec2 vec3
---@return vec3
function math.cross(vec1, vec2) end

---Dot product between vectors.
---@param vec1 vec3
---@param vec2 vec3
---@return float
function math.dot(vec1, vec2) end

---Linearly interpolate between two vectors.
---@param vec1 vec3
---@param vec2 vec3
---@return vec3
function math.mix(vec1, vec2) end

---Linearly interpolate between two vectors.
---@param vec1 vec3
---@param vec2 vec3
---@param t
---@return vec3
function math.mix(vec1, vec2, t) end

---Clamp a number between min and max.
---@param value number
---@param min
---@param max
---@return float
function math.clamp(value, min, max) end

---Returns the positive value.
---@param value number
---@return float
function math.abs(value) end

---Returns the positive value.
---@param value number
---@return float
function math.abs(value) end

---Returns 1.0 or -1.0 depending on the sign of value.
---@param value number
---@return float
function math.sign(value) end

---Spherical linear interpolation between two quaternions.
---@param orientation1 quat
---@param orientation2 quat
---@return quat
function math.slerp(orientation1, orientation2) end

---Min of two numbers.
---@param value1 number
---@param value2 number
---@return float
function math.min(value1, value2) end

---Max of two numbers.
---@param value1 number
---@param value2 number
---@return float
function math.max(value1, value2) end

---Get radians from degrees.
---@param value number
---@return float
function math.radians(value) end

---Get degrees from radians.
---@param value number
---@return float
function math.degrees(value) end

---value, number.
---@return float
function math.cos(value) end

---value, number.
---@return float
function math.sin(value) end

---value, number.
---@return float
function math.asin(value) end

---value, number.
---@return float
function math.tan(value) end

---value, number.
---@return float
function math.atan(value) end

---value, number.
---@return float
function math.atan(value) end

---value, number.
---@return float
function math.atan2(value) end

---value, number.
---@return float
function math.atan2(value) end

---value, number.
---@return float
function math.tanh(value) end

---value, number.
---@return float
function math.log(value) end

---value, number.
---@return float
function math.log2(value) end

---value, number.
---@return float
function math.floor(value) end

---value, number.
---@return float
function math.ceil(value) end

---value, number.
---@return float
function math.exp(value) end

---value, number.
---@return float
function math.exp2(value) end

---value, number.
---@return float
function math.fract(value) end

---value, number.
---@return float
function math.inversesqrt(value) end

---value, number.
---@return float
function math.sqrt(value) end

---value, number.
---@return float
function math.mod(value) end

---value, number.
---@return float
function math.pow(value) end
