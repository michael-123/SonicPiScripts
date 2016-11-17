# SonicPiScripts
More or less some notes for working with Sonic Pi:

* Info & Latest Releases: http://sonic-pi.net
* Source: https://github.com/samaaron/sonic-pi
* Computing Education Resources for Schools: http://www.raspberrypi.org/learning/sonic-pi-lessons/
* Music Education Toolkit for Schools: http://sonicpiliveandcoding.com


## Notes

### Commands

#### `use_bpm 90`
The song plays with 90 bpm. `sleep 1` means _sleep for one beat_, so sleep for _60.0/90.0 seconds = 0.66666666 seconds_.

#### `sample_duration :loop_amen`
Returns the seconds the sample needs to be fully played.

### Attributes

#### `mix`

#### `phase`

#### `rate`
*Used with*: `sample`, `play`

#### `amp`
Volume of the sample. Default value is `amp: 1`.
*Used with*: `sample`, `play`

#### `pan`
Defines where the sound is coming from: From the left with `pan: -1`, from the right with `pan: 1`. `pan: 0` leads to a centred sound.
*Used with*: `sample`, `play`

#### `attack`, `decay`, `sustain`, `release`
*Used with*: `sample`, `play`
