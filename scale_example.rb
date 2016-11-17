notes = (scale :e3, :minor_pentatonic)
live_loop :vortex do
  play notes.choose, release: 0.1
  sleep 0.125
end