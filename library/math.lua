---@meta

-- Everything you need to make games using math!
math = {}

---Angle between vectors in radians.
---@param vec1 vec3.
---@param vec2 vec3.
---@return float
function angle(vec1, vec2) end

---Build a quaternion from an angle and an axis.
---@param value number.
---@param vec vec3.
---@return quat
function angleAxis(value, vec) end

---Convert a quaternion to euler angles.
---@param orientation quat.
---@return vec3
function eulerAngles(orientation) end

---Measures the length of a vector.
---@param vec vec3.
---@return float
function length(vec) end

---Measures the distance between two vectors.
---@param vec1 vec3.
---@param vec2 vec3.
---@return float
function distance(vec1, vec2) end

---Normalize a vector.
---@param vec vec3.
---@return vec3
function normalize(vec) end

---Invert a vector.
---@param vec vec3.
---@return vec3
function inverse(vec) end

---Cross product between vectors.
---@param vec1 vec3.
---@param vec2 vec3.
---@return vec3
function cross(vec1, vec2) end

---Dot product between vectors.
---@param vec1 vec3.
---@param vec2 vec3.
---@return float
function dot(vec1, vec2) end

---Linearly interpolate between two vectors.
---@param vec1 vec3.
---@param vec2 vec3.
---@return vec3
function mix(vec1, vec2) end

---Linearly interpolate between two vectors.
---@param vec1 vec3.
---@param vec2 vec3.
---@param t .
---@return vec3
function mix(vec1, vec2, t) end

---Clamp a number between min and max.
---@param value number.
---@param min .
---@param max .
---@return float
function clamp(value, min, max) end

---Returns the positive value.
---@param value number.
---@return float
function abs(value) end

---Returns the positive value.
---@param value number.
---@return float
function abs(value) end

---Returns 1.0 or -1.0 depending on the sign of value.
---@param value number.
---@return float
function sign(value) end

---Spherical linear interpolation between two quaternions.
---@param orientation1 quat.
---@param orientation2 quat.
---@return quat
function slerp(orientation1, orientation2) end

---Min of two numbers.
---@param value1 number.
---@param value2 number.
---@return float
function min(value1, value2) end

---Max of two numbers.
---@param value1 number.
---@param value2 number.
---@return float
function max(value1, value2) end

---Get radians from degrees.
---@param value number.
---@return float
function radians(value) end

---Get degrees from radians.
---@param value number.
---@return float
function degrees(value) end

---@param value number.
---@return float
function cos(value) end

---@param value number.
---@return float
function sin(value) end

---@param value number.
---@return float
function asin(value) end

---@param value number.
---@return float
function tan(value) end

---@param value number.
---@return float
function atan(value) end

---@param value number.
---@return float
function atan(value) end

---@param value number.
---@return float
function atan2(value) end

---@param value number.
---@return float
function atan2(value) end

---@param value number.
---@return float
function tanh(value) end

---@param value number.
---@return float
function log(value) end

---@param value number.
---@return float
function log2(value) end

---@param value number.
---@return float
function floor(value) end

---@param value number.
---@return float
function ceil(value) end

---@param value number.
---@return float
function exp(value) end

---@param value number.
---@return float
function exp2(value) end

---@param value number.
---@return float
function fract(value) end

---@param value number.
---@return float
function inversesqrt(value) end

---@param value number.
---@return float
function sqrt(value) end

---@param value number.
---@return float
function mod(value) end

---@param value number.
---@return float
function pow(value) end

