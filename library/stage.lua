---@meta

-- Anything to do with cameras, lights, environment and post-processing effects.
local stage = {}

---Make a new environment entity. Environments are used to control global visual aspects such as fog or background gradients.
---@return Entity a pointer to an environment in the world
function stage.makeEnvironment() end

---Set the active environment to be used when shading the scene.
---@param environment Entity a pointer to an environment in the world.
function stage.setActiveEnvironment(environment) end

---Get the active environment used to shade the scene.
---@return Entity a pointer to an entity in the world, nil if the entity was not found
function stage.getActiveEnvironment() end

---Set how much light the scene gets from this environment.
---@param environment Entity a pointer to an environment in the world.
---@param value number.
function stage.setEnvironmentIntensity(environment, value) end

---Get how much light the scene gets from this environment.
---@param environment Entity a pointer to an environment in the world.
---@return float
function stage.getEnvironmentIntensity(environment) end

---Set how much light comes from models that have emissive colors.
---@param environment Entity a pointer to an environment in the world.
---@param value number.
function stage.setEnvironmentEmissiveStrength(environment, value) end

---Get how much light comes from models that have emissive colors.
---@param environment Entity a pointer to an environment in the world.
---@return float
function stage.getEnvironmentEmissiveStrength(environment) end

---Set the top color of the gradient for this environment. The color.w element is used for emissive strength, value range is 0.0 to 1.0.
---@param environment Entity a pointer to an environment in the world.
---@param color vec4.
function stage.setEnvironmentColorTop(environment, color) end

---Get the top color of the gradient for this environment.
---@param environment Entity a pointer to an environment in the world.
---@return vec4
function stage.getEnvironmentColorTop(environment) end

---Set the center color of the gradient for this environment. The color.w element is used for emissive strength, value range is 0.0 to 1.0.
---@param environment Entity a pointer to an environment in the world.
---@param color vec4.
function stage.setEnvironmentColorCenter(environment, color) end

---Get the top center of the gradient for this environment.
---@param environment Entity a pointer to an environment in the world.
---@return vec4
function stage.getEnvironmentColorCenter(environment) end

---Set the bottom color of the gradient for this environment. The color.w element is used for emissive strength, value range is 0.0 to 1.0.
---@param environment Entity a pointer to an environment in the world.
---@param color vec4.
function stage.setEnvironmentColorBottom(environment, color) end

---Get the bottom center of the gradient for this environment.
---@param environment Entity a pointer to an environment in the world.
---@return vec4
function stage.getEnvironmentColorBottom(environment) end

---Set the ambient occlusion for this environment.
---@param environment Entity a pointer to an environment in the world.
---@param value number.
function stage.setEnvironmentAmbientOcclusion(environment, value) end

---Get the ambient occlusion for this environment.
---@param environment Entity a pointer to an environment in the world.
---@return float
function stage.getEnvironmentAmbientOcclusion(environment) end

---Set the ambient occlusion radius for this environment.
---@param environment Entity a pointer to an environment in the world.
---@param value number.
function stage.setEnvironmentAmbientOcclusionRadius(environment, value) end

---Get the ambient occlusion radius for this environment.
---@param environment Entity a pointer to an environment in the world.
---@return float
function stage.getEnvironmentAmbientOcclusionRadius(environment) end

---Set the fog density for this environment.
---@param environment Entity a pointer to an environment in the world.
---@param value number.
function stage.setEnvironmentFogDensity(environment, value) end

---Get the fog density for this environment.
---@param environment Entity a pointer to an environment in the world.
---@return float
function stage.getEnvironmentFogDensity(environment) end

---Set the height at which fog will start to appear.
---@param environment Entity a pointer to an environment in the world.
---@param value number.
function stage.setEnvironmentFogHeight(environment, value) end

---Get the height at which fog will start to appear.
---@param environment Entity a pointer to an environment in the world.
---@return float
function stage.getEnvironmentFogHeight(environment) end

---Set the fog height falloff.
---@param environment Entity a pointer to an environment in the world.
---@param value number.
function stage.setEnvironmentFogHeightFalloff(environment, value) end

---Get the fog height falloff.
---@param environment Entity a pointer to an environment in the world.
---@return float
function stage.getEnvironmentFogHeightFalloff(environment) end

---Set the distance at which fog will start to appear.
---@param environment Entity a pointer to an environment in the world.
---@param value number.
function stage.setEnvironmentFogStart(environment, value) end

---Get the distance at which fog will start to appear.
---@param environment Entity a pointer to an environment in the world.
---@return float
function stage.getEnvironmentFogStart(environment) end

---Set the overall fog opacity.
---@param environment Entity a pointer to an environment in the world.
---@param value number.
function stage.setEnvironmentFogOpacity(environment, value) end

---Get the overall fog opacity.
---@param environment Entity a pointer to an environment in the world.
---@return float
function stage.getEnvironmentFogOpacity(environment) end

---Set the color of the fog.
---@param environment Entity a pointer to an environment in the world.
---@param color vec4.
function stage.setEnvironmentFogColor(environment, color) end

---Get the color of the fog.
---@param environment Entity a pointer to an environment in the world.
---@return vec4
function stage.getEnvironmentFogColor(environment) end

---Make a light.
---@return Entity a pointer to a light in the world
function stage.makeLight() end

---Set the light type.
---@param light Entity a pointer to a light in the world.
---@param lightType int available values are LIGHT_SUN LIGHT_BULB LIGHT_LAMP.
function stage.setLightType(light, lightType) end

---Get the light type.
---@param light Entity a pointer to a light in the world.
---@return int
function stage.getLightType(light) end

---Set whether this light should cast a shadow.
---Set whether this light should cast a shadow.
---Only one sun light can cast shadows, so if this light is a sun, then all other suns will switched to not casting shadows.
---@param light Entity a pointer to a light in the world.
---@param state boolean.
function stage.setLightCastShadow(light, state) end

---Get whether this light is casting a shadow.
---@param light Entity a pointer to a light in the world.
---@return bool
function stage.getLightCastShadow(light) end

---Set the light intensity.
---@param light Entity a pointer to a light in the world.
---@param value number.
function stage.setLightIntensity(light, value) end

---Get the light intensity.
---@param light Entity a pointer to a light in the world.
---@return float
function stage.getLightIntensity(light) end

---Set the penumbra (soft shadow), only works if this light is casting shadows. Value range is 0.0 to 1.0.
---@param light Entity a pointer to a light in the world.
---@param value number.
function stage.setLightPenumbra(light, value) end

---Get the light penumbra for a shadow casting light. Value range is 0.0 to 1.0.
---@param light Entity a pointer to a light in the world.
---@return float
function stage.getLightPenumbra(light) end

---Set the light color.
---@param light Entity a pointer to a light in the world.
---@param color vec4.
function stage.setLightColor(light, color) end

---Get the light color.
---@param light Entity a pointer to a light in the world.
---@return vec4
function stage.getLightColor(light) end

---Set a vec2 containing inner and outer cone radius for a lamp light. Value range is 0.0 to 1.0.
---@param light Entity a pointer to a light in the world.
---@param cone vec2 cone.x is inner radius cone.y is outer radius.
function stage.setLightCone(light, cone) end

---Get a vec2 containing inner and outer cone radius for a lamp light. Value range is 0.0 to 1.0.
---@param light Entity a pointer to a light in the world.
---@return vec2 ret.x is inner radius, ret.y is outer radius
function stage.getLightCone(light) end

---Set the light radius for a sun or bulb light. Value range is 0.0 to 1.0.
---@param light Entity a pointer to a light in the world.
---@param value number.
function stage.setLightRadius(light, value) end

---Get the light radius for a sun or bulb light. Value range is 0.0 to 1.0.
---@param light Entity a pointer to a light in the world.
---@return float
function stage.getLightRadius(light) end

---Make a new camera.
---@return Entity a pointer to a camera in the world
function stage.makeCamera() end

---Set a camera to become the one you see though while playing the game.
---@param camera Entity a pointer to a camera in the world.
function stage.setActiveCamera(camera) end

---Get the active camera.
---@return Entity a pointer to an entity in the world, nil if the entity was not found
function stage.getActiveCamera() end

---Set the camera field of view.
---Set the camera field of view.
---@param camera Entity a pointer to a camera in the world.
---@param value number.
function stage.setCameraFov(camera, value) end

---Get the camera field of view.
---@param camera Entity a pointer to a camera in the world.
---@return float
function stage.getCameraFov(camera) end

---Set the camera exposure.
---@param camera Entity a pointer to a camera in the world.
---@param value number.
function stage.setCameraExposure(camera, value) end

---Get the camera exposure.
---@param camera Entity a pointer to a camera in the world.
---@return float
function stage.getCameraExposure(camera) end

---Set how much bloom will reflect on this camera's lens.
---@param camera Entity a pointer to a camera in the world.
---@param value number.
function stage.setCameraBloom(camera, value) end

---Get how much bloom will reflect on this camera's lens.
---@param camera Entity a pointer to a camera in the world.
---@return float
function stage.getCameraBloom(camera) end

---Set how large the bloom radius will reflect on this camera's lens.
---@param camera Entity a pointer to a camera in the world.
---@param value number.
function stage.setCameraBloomRadius(camera, value) end

---Get how large the bloom radius will reflect on this camera's lens.
---@param camera Entity a pointer to a camera in the world.
---@return float
function stage.getCameraBloomRadius(camera) end

---Set a threshold past which emission sources will start to blooming.
---@param camera Entity a pointer to a camera in the world.
---@param value number.
function stage.setCameraBloomThreshold(camera, value) end

---Get a threshold past which emission sources will start to blooming.
---@param camera Entity a pointer to a camera in the world.
---@return float
function stage.getCameraBloomThreshold(camera) end

---Set the camera lens vignette color.
---@param camera Entity a pointer to a camera in the world.
---@param color vec4.
function stage.setCameraVignetteColor(camera, color) end

---Get the camera lens vignette color.
---@param camera Entity a pointer to a camera in the world.
---@return vec4
function stage.getCameraVignetteColor(camera) end

---Set the camera lens vignette mid-point.
---@param camera Entity a pointer to a camera in the world.
---@param value number.
function stage.setCameraVignetteMidPoint(camera, value) end

---Get the camera lens vignette mid-point.
---@param camera Entity a pointer to a camera in the world.
---@return float
function stage.getCameraVignetteMidPoint(camera) end

---Set the camera lens vignette roundness.
---@param camera Entity a pointer to a camera in the world.
---@param value number.
function stage.setCameraVignetteRoundness(camera, value) end

---Get the camera lens vignette roundness.
---@param camera Entity a pointer to a camera in the world.
---@return float
function stage.getCameraVignetteRoundness(camera) end

---Set the camera lens vignette fade.
---@param camera Entity a pointer to a camera in the world.
---@param value number.
function stage.setCameraVignetteFade(camera, value) end

---Get the camera lens vignette fade.
---@param camera Entity a pointer to a camera in the world.
---@return float
function stage.getCameraVignetteFade(camera) end

---Set the contrast of the final image.
---@param camera Entity a pointer to a camera in the world.
---@param value number.
function stage.setCameraContrast(camera, value) end

---Get the contrast of the final image.
---@param camera Entity a pointer to a camera in the world.
---@return float
function stage.getCameraContrast(camera) end

---Set the color vibrance of the final image.
---@param camera Entity a pointer to a camera in the world.
---@param value number.
function stage.setCameraVibrance(camera, value) end

---Get the color vibrance of the final image.
---@param camera Entity a pointer to a camera in the world.
---@return float
function stage.getCameraVibrance(camera) end

---Set the color saturation of the final image.
---@param camera Entity a pointer to a camera in the world.
---@param value number.
function stage.setCameraSaturation(camera, value) end

---Get the color saturation of the final image.
---@param camera Entity a pointer to a camera in the world.
---@return float
function stage.getCameraSaturation(camera) end

---Set the blacks level of the final image.
---@param camera Entity a pointer to a camera in the world.
---@param value number.
function stage.setCameraBlacks(camera, value) end

---Get the blacks level of the final image.
---@param camera Entity a pointer to a camera in the world.
---@return float
function stage.getCameraBlacks(camera) end

---Make a grid, useful when making a 3d editor.
---@return Entity a pointer to a grid in the world
function stage.makeGrid() end

---Set the grid spacing.
---@param grid Entity a pointer to a grid in the world.
---@param value number.
function stage.setGridSpacing(grid, value) end

---Set the grid color.
---@param grid Entity a pointer to a grid in the world.
---@param color vec4.
function stage.setGridColor(grid, color) end

---Set the grid's fade radius, move the grid to reposition the fade origin.
---@param grid Entity a pointer to a grid in the world.
---@param value number.
function stage.setGridFadeRadius(grid, value) end

return stage
