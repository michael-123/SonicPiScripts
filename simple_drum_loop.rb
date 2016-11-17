bpm = 90
one_beat = 60.0/bpm

live_loop :bd do
  sample :bd_haus
  sleep one_beat
  sleep one_beat
end

live_loop :sn do
  sync :bd
  sleep one_beat
  sample :sn_dolf
  sleep one_beat
end

live_loop :hh do
  sync :bd
  hh_on_every = 2
  (hh_on_every*4).times do 
    sample :drum_cymbal_closed
    sleep one_beat / hh_on_every
  end
end