---@meta

-- Sound and music in unbound is made using synths.
-- A synth is a piece of musical equipment that generates interactive and procedural sounds, they can change and react to your game.
sound = {}

---Make a synth and store in memory.
---@return Synth # a pointer to a synth in memory
function sound.makeSynth() end

---Destroy a synth that is in memory.
---@param synth Synth: a pointer to a synth in memory
function sound.destroySynth(synth) end

---Set the volume of the synth. Range is 0.0 to 1.0.
---@param synth Synth: a pointer to a synth in memory
---@param volumeLeft float: left channel volume
---@param volumeRight float: right channel volume
function sound.setSynthVolume(synth, volumeLeft, volumeRight) end

---Play a midi note keeping it sustained for a certain amount of time.
function sound.playSynthNote(synth, midiNote, sustainTime, delayTime) end

---Stop a note while it's still playing.
---@param synth Synth: a pointer to a synth in memory
function sound.stopPlayingSynthNote(synth) end

---Check if a synth is playing a note.
---@param synth Synth: a pointer to a synth in memory
---@return bool
function sound.isSynthPlayingNote(synth) end

---Play a synth with a sustained tone until it's switched off. Use setSynthOscillatorFrequency() to change how it sounds.
---@param synth Synth: a pointer to a synth in memory
---@param state boolean
function sound.playSynth(synth, state) end

---Set the wave shape of a synth's oscillator.
function sound.setSynthOscillatorWave(synth, waveShape) end

---Set the frequency of an oscillator.
---@param synth Synth: a pointer to a synth in memory
---@param freq float: frequency of the oscillator
function sound.setSynthOscillatorFrequency(synth, freq) end

---Get the output of a synth's oscillator as it plays.
---@param synth Synth: a pointer to a synth in memory
---@return float
function sound.getSynthOscillatorOut(synth) end

---Set the reverb amount of a synth.
---@param synth Synth: a pointer to a synth in memory
---@param value number
function sound.setSynthReverb(synth, value) end

---Set an envelope shape to modulate notes when they are being played.
---@param synth Synth: a pointer to a synth in memory
---@param attackTime float: how long it takes for a note to go from level 0.0 to 1.0
---@param decayTime float: how long it takes for a note to go from 1.0 to sustain level
---@param sustainLevel float: the level or volume at which the note will be played while sustained
---@param releaseTime float: how long it takes for a note to fade back to 0.0 after it gets released
function sound.setSynthEnvelope(synth, attackTime, decayTime, sustainLevel, releaseTime) end

---Get a synth envelope while a note is being played.
---@param synth Synth: a pointer to a synth in memory
---@return float
function sound.getSynthEnvelopeOut(synth) end

---Set the noise level on a synth.
---@param synth Synth: a pointer to a synth in memory
---@param noiseAmount
---@param noiseFrequency
function sound.setSynthNoise(synth, noiseAmount, noiseFrequency) end

---Get noise values from a synth.
---@param synth Synth: a pointer to a synth in memory
---@return float
function sound.getSynthNoiseOut(synth) end

---Set the global sound volume.
---@param value number
function sound.setGlobalSynthVolume(value) end
