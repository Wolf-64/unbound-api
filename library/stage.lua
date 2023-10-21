---@meta

-- Anything to do with cameras, lights, environment and post-processing effects.
stage = {}

---Make a new environment entity. Environments are used to control global visual aspects such as fog or background gradients.
---@return Entity # a pointer to an environment in the world
function makeEnvironment() end

---Set the active environment to be used when shading the scene.
---@param environment Entity: a pointer to an environment in the world
function setActiveEnvironment(environment) end

---Get the active environment used to shade the scene.
---@return Entity # a pointer to an entity in the world, nil if the entity was not found
function getActiveEnvironment() end

---Set how much light the scene gets from this environment.
---@param environment Entity: a pointer to an environment in the world
---@param value number
function setEnvironmentIntensity(environment, value) end

---Get how much light the scene gets from this environment.
---@param environment Entity: a pointer to an environment in the world
---@return float
function getEnvironmentIntensity(environment) end

---Set how much light comes from models that have emissive colors.
---@param environment Entity: a pointer to an environment in the world
---@param value number
function setEnvironmentEmissiveStrength(environment, value) end

---Get how much light comes from models that have emissive colors.
---@param environment Entity: a pointer to an environment in the world
---@return float
function getEnvironmentEmissiveStrength(environment) end

---Set the top color of the gradient for this environment. The color.w element is used for emissive strength, value range is 0.0 to 1.0.
---@param environment Entity: a pointer to an environment in the world
---@param color vec4
function setEnvironmentColorTop(environment, color) end

---Get the top color of the gradient for this environment.
---@param environment Entity: a pointer to an environment in the world
---@return vec4
function getEnvironmentColorTop(environment) end

---Set the center color of the gradient for this environment. The color.w element is used for emissive strength, value range is 0.0 to 1.0.
---@param environment Entity: a pointer to an environment in the world
---@param color vec4
function setEnvironmentColorCenter(environment, color) end

---Get the top center of the gradient for this environment.
---@param environment Entity: a pointer to an environment in the world
---@return vec4
function getEnvironmentColorCenter(environment) end

---Set the bottom color of the gradient for this environment. The color.w element is used for emissive strength, value range is 0.0 to 1.0.
---@param environment Entity: a pointer to an environment in the world
---@param color vec4
function setEnvironmentColorBottom(environment, color) end

---Get the bottom center of the gradient for this environment.
---@param environment Entity: a pointer to an environment in the world
---@return vec4
function getEnvironmentColorBottom(environment) end

---Set the ambient occlusion for this environment.
---@param environment Entity: a pointer to an environment in the world
---@param value number
function setEnvironmentAmbientOcclusion(environment, value) end

---Get the ambient occlusion for this environment.
---@param environment Entity: a pointer to an environment in the world
---@return float
function getEnvironmentAmbientOcclusion(environment) end

---Set the ambient occlusion radius for this environment.
---@param environment Entity: a pointer to an environment in the world
---@param value number
function setEnvironmentAmbientOcclusionRadius(environment, value) end

---Get the ambient occlusion radius for this environment.
---@param environment Entity: a pointer to an environment in the world
---@return float
function getEnvironmentAmbientOcclusionRadius(environment) end

---Set the fog density for this environment.
---@param environment Entity: a pointer to an environment in the world
---@param value number
function setEnvironmentFogDensity(environment, value) end

---Get the fog density for this environment.
---@param environment Entity: a pointer to an environment in the world
---@return float
function getEnvironmentFogDensity(environment) end

---Set the height at which fog will start to appear.
---@param environment Entity: a pointer to an environment in the world
---@param value number
function setEnvironmentFogHeight(environment, value) end

---Get the height at which fog will start to appear.
---@param environment Entity: a pointer to an environment in the world
---@return float
function getEnvironmentFogHeight(environment) end

---Set the fog height falloff.
---@param environment Entity: a pointer to an environment in the world
---@param value number
function setEnvironmentFogHeightFalloff(environment, value) end

---Get the fog height falloff.
---@param environment Entity: a pointer to an environment in the world
---@return float
function getEnvironmentFogHeightFalloff(environment) end

---Set the distance at which fog will start to appear.
---@param environment Entity: a pointer to an environment in the world
---@param value number
function setEnvironmentFogStart(environment, value) end

---Get the distance at which fog will start to appear.
---@param environment Entity: a pointer to an environment in the world
---@return float
function getEnvironmentFogStart(environment) end

---Set the overall fog opacity.
---@param environment Entity: a pointer to an environment in the world
---@param value number
function setEnvironmentFogOpacity(environment, value) end

---Get the overall fog opacity.
---@param environment Entity: a pointer to an environment in the world
---@return float
function getEnvironmentFogOpacity(environment) end

---Set the color of the fog.
---@param environment Entity: a pointer to an environment in the world
---@param color vec4
function setEnvironmentFogColor(environment, color) end

---Get the color of the fog.
---@param environment Entity: a pointer to an environment in the world
---@return vec4
function getEnvironmentFogColor(environment) end

---Make a light.
---@return Entity # a pointer to a light in the world
function makeLight() end

---Set the light type.
---@param light Entity: a pointer to a light in the world
---@param lightType int: available values are LIGHT_SUN LIGHT_BULB LIGHT_LAMP
function setLightType(light, lightType) end

---Get the light type.
---@param light Entity: a pointer to a light in the world
---@return int
function getLightType(light) end

---Set whether this light should cast a shadow.
function setLightCastShadow(light, state) end

---Get whether this light is casting a shadow.
---@param light Entity: a pointer to a light in the world
---@return bool
function getLightCastShadow(light) end

---Set the light intensity.
---@param light Entity: a pointer to a light in the world
---@param value number
function setLightIntensity(light, value) end

---Get the light intensity.
---@param light Entity: a pointer to a light in the world
---@return float
function getLightIntensity(light) end

---Set the penumbra (soft shadow), only works if this light is casting shadows. Value range is 0.0 to 1.0.
---@param light Entity: a pointer to a light in the world
---@param value number
function setLightPenumbra(light, value) end

---Get the light penumbra for a shadow casting light. Value range is 0.0 to 1.0.
---@param light Entity: a pointer to a light in the world
---@return float
function getLightPenumbra(light) end

---Set the light color.
---@param light Entity: a pointer to a light in the world
---@param color vec4
function setLightColor(light, color) end

---Get the light color.
---@param light Entity: a pointer to a light in the world
---@return vec4
function getLightColor(light) end

---Set a vec2 containing inner and outer cone radius for a lamp light. Value range is 0.0 to 1.0.
---@param light Entity: a pointer to a light in the world
---@param cone vec2: cone.x is inner radius cone.y is outer radius
function setLightCone(light, cone) end

---Get a vec2 containing inner and outer cone radius for a lamp light. Value range is 0.0 to 1.0.
---@param light Entity: a pointer to a light in the world
---@return vec2 # ret.x is inner radius, ret.y is outer radius
function getLightCone(light) end

---Set the light radius for a sun or bulb light. Value range is 0.0 to 1.0.
---@param light Entity: a pointer to a light in the world
---@param value number
function setLightRadius(light, value) end

---Get the light radius for a sun or bulb light. Value range is 0.0 to 1.0.
---@param light Entity: a pointer to a light in the world
---@return float
function getLightRadius(light) end

---Make a new camera.
---@return Entity # a pointer to a camera in the world
function makeCamera() end

---Set a camera to become the one you see though while playing the game.
---@param camera Entity: a pointer to a camera in the world
function setActiveCamera(camera) end

---Get the active camera.
---@return Entity # a pointer to an entity in the world, nil if the entity was not found
function getActiveCamera() end

---Set the camera field of view.
function setCameraFov(camera, value) end

---Get the camera field of view.
---@param camera Entity: a pointer to a camera in the world
---@return float
function getCameraFov(camera) end

---Set the camera exposure.
---@param camera Entity: a pointer to a camera in the world
---@param value number
function setCameraExposure(camera, value) end

---Get the camera exposure.
---@param camera Entity: a pointer to a camera in the world
---@return float
function getCameraExposure(camera) end

---Set how much bloom will reflect on this camera's lens.
---@param camera Entity: a pointer to a camera in the world
---@param value number
function setCameraBloom(camera, value) end

---Get how much bloom will reflect on this camera's lens.
---@param camera Entity: a pointer to a camera in the world
---@return float
function getCameraBloom(camera) end

---Set how large the bloom radius will reflect on this camera's lens.
---@param camera Entity: a pointer to a camera in the world
---@param value number
function setCameraBloomRadius(camera, value) end

---Get how large the bloom radius will reflect on this camera's lens.
---@param camera Entity: a pointer to a camera in the world
---@return float
function getCameraBloomRadius(camera) end

---Set a threshold past which emission sources will start to blooming.
---@param camera Entity: a pointer to a camera in the world
---@param value number
function setCameraBloomThreshold(camera, value) end

---Get a threshold past which emission sources will start to blooming.
---@param camera Entity: a pointer to a camera in the world
---@return float
function getCameraBloomThreshold(camera) end

---Set the camera lens vignette color.
---@param camera Entity: a pointer to a camera in the world
---@param color vec4
function setCameraVignetteColor(camera, color) end

---Get the camera lens vignette color.
---@param camera Entity: a pointer to a camera in the world
---@return vec4
function getCameraVignetteColor(camera) end

---Set the camera lens vignette mid-point.
---@param camera Entity: a pointer to a camera in the world
---@param value number
function setCameraVignetteMidPoint(camera, value) end

---Get the camera lens vignette mid-point.
---@param camera Entity: a pointer to a camera in the world
---@return float
function getCameraVignetteMidPoint(camera) end

---Set the camera lens vignette roundness.
---@param camera Entity: a pointer to a camera in the world
---@param value number
function setCameraVignetteRoundness(camera, value) end

---Get the camera lens vignette roundness.
---@param camera Entity: a pointer to a camera in the world
---@return float
function getCameraVignetteRoundness(camera) end

---Set the camera lens vignette fade.
---@param camera Entity: a pointer to a camera in the world
---@param value number
function setCameraVignetteFade(camera, value) end

---Get the camera lens vignette fade.
---@param camera Entity: a pointer to a camera in the world
---@return float
function getCameraVignetteFade(camera) end

---Set the contrast of the final image.
---@param camera Entity: a pointer to a camera in the world
---@param value number
function setCameraContrast(camera, value) end

---Get the contrast of the final image.
---@param camera Entity: a pointer to a camera in the world
---@return float
function getCameraContrast(camera) end

---Set the color vibrance of the final image.
---@param camera Entity: a pointer to a camera in the world
---@param value number
function setCameraVibrance(camera, value) end

---Get the color vibrance of the final image.
---@param camera Entity: a pointer to a camera in the world
---@return float
function getCameraVibrance(camera) end

---Set the color saturation of the final image.
---@param camera Entity: a pointer to a camera in the world
---@param value number
function setCameraSaturation(camera, value) end

---Get the color saturation of the final image.
---@param camera Entity: a pointer to a camera in the world
---@return float
function getCameraSaturation(camera) end

---Set the blacks level of the final image.
---@param camera Entity: a pointer to a camera in the world
---@param value number
function setCameraBlacks(camera, value) end

---Get the blacks level of the final image.
---@param camera Entity: a pointer to a camera in the world
---@return float
function getCameraBlacks(camera) end

---Make a grid, useful when making a 3d editor.
---@return Entity # a pointer to a grid in the world
function makeGrid() end

---Set the grid spacing.
---@param grid Entity: a pointer to a grid in the world
---@param value number
function setGridSpacing(grid, value) end

---Set the grid color.
---@param grid Entity: a pointer to a grid in the world
---@param color vec4
function setGridColor(grid, color) end

---Set the grid's fade radius, move the grid to reposition the fade origin.
---@param grid Entity: a pointer to a grid in the world
---@param value number
function setGridFadeRadius(grid, value) end
