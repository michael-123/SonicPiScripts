use_bpm 90

live_loop :bd do
  sample :bd_haus
  sleep 1
  sleep 1
end

live_loop :sn do
  sync :bd
  sleep 1
  sample :sn_dolf
  sleep 1
end

live_loop :hh do
  sync :bd
  sample :drum_cymbal_closed
  sleep 0.5
  sample :drum_cymbal_closed
  sleep 0.5
  sample :drum_cymbal_closed
  sleep 0.5
  sample :drum_cymbal_closed
  sleep 0.5
end
