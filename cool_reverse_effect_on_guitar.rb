live_loop :guit do
  with_fx :echo, mix: 0.3, phase: 0.25 do
    sample :guit_em9, rate: 0.5
  end
  sample :guit_em9, rate: -0.5
  sleep 8
end