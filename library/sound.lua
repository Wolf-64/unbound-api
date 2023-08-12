---@meta

-- Sound and music in unbound is made using synths.
-- A synth is a piece of musical equipment that generates interactive and procedural sounds, they can change and react to your game.
sound = {}

---Make a synth and store in memory.
---@return Synth a pointer to a synth in memory
function makeSynth() end

---Destroy a synth that is in memory.
---@param synth Synth a pointer to a synth in memory.
function destroySynth(synth) end

---Set the volume of the synth. Range is 0.0 to 1.0.
---@param synth Synth a pointer to a synth in memory.
---@param volumeLeft float left channel volume.
---@param volumeRight float right channel volume.
function setSynthVolume(synth, volumeLeft, volumeRight) end

---Play a midi note keeping it sustained for a certain amount of time.
---Play a midi note keeping it sustained for a certain amount of time.
---@param synth Synth a pointer to a synth in memory.
---@param midiNote float midi note.
---@param sustainTime float how long the note will be sustained.
---@param optional [delayTime] float how long should the note wait before being played.
function playSynthNote(synth, midiNote, sustainTime, [delayTime]) end

---Stop a note while it's still playing.
---@param synth Synth a pointer to a synth in memory.
function stopPlayingSynthNote(synth) end

---Check if a synth is playing a note.
---@param synth Synth a pointer to a synth in memory.
---@return bool
function isSynthPlayingNote(synth) end

---Play a synth with a sustained tone until it's switched off. Use setSynthOscillatorFrequency() to change how it sounds.
---@param synth Synth a pointer to a synth in memory.
---@param state boolean.
function playSynth(synth, state) end

---Set the wave shape of a synth's oscillator.
---Set the wave shape of a synth's oscillator.
---@param synth Synth a pointer to a synth in memory.
---@param waveShape int available values are SYNTH_WAVE_SIN SYNTH_WAVE_TRI SYNTH_WAVE_SAW SYNTH_WAVE_RAMP SYNTH_WAVE_SQUARE SYNTH_WAVE_POLYBLEP_TRI SYNTH_WAVE_POLYBLEP_SAW SYNTH_WAVE_POLYBLEP_SQUARE.
function setSynthOscillatorWave(synth, waveShape) end

---Set the frequency of an oscillator.
---@param synth Synth a pointer to a synth in memory.
---@param freq float frequency of the oscillator.
function setSynthOscillatorFrequency(synth, freq) end

---Get the output of a synth's oscillator as it plays.
---@param synth Synth a pointer to a synth in memory.
---@return float
function getSynthOscillatorOut(synth) end

---Set the reverb amount of a synth.
---@param synth Synth a pointer to a synth in memory.
---@param value number.
function setSynthReverb(synth, value) end

---Set an envelope shape to modulate notes when they are being played.
---@param synth Synth a pointer to a synth in memory.
---@param attackTime float how long it takes for a note to go from level 0.0 to 1.0.
---@param decayTime float how long it takes for a note to go from 1.0 to sustain level.
---@param sustainLevel float the level or volume at which the note will be played while sustained.
---@param releaseTime float how long it takes for a note to fade back to 0.0 after it gets released.
function setSynthEnvelope(synth, attackTime, decayTime, sustainLevel, releaseTime) end

---Get a synth envelope while a note is being played.
---@param synth Synth a pointer to a synth in memory.
---@return float
function getSynthEnvelopeOut(synth) end

---Set the noise level on a synth.
---@param synth Synth a pointer to a synth in memory.
---@param noiseAmount .
---@param noiseFrequency .
function setSynthNoise(synth, noiseAmount, noiseFrequency) end

---Get noise values from a synth.
---@param synth Synth a pointer to a synth in memory.
---@return float
function getSynthNoiseOut(synth) end

---Set the global sound volume.
---@param value number.
function setGlobalSynthVolume(value) end

