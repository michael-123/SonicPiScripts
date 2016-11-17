live_loop :drums do
  use_random_seed  438
  with_fx :reverb, room: 1 do
  7.times do
    sample :drum_cowbell, rate: rrand(0.2, 3)
    sleep rrand(0.1, 3)
  end
end
  sleep 1
end

live_loop :bass do
  6.times do
    with_fx :reverb do
      sample :ambi_haunted_hum, release: 2, attack: 0.7
      sleep 4
    end
  end
end

live_loop :pulse do 
  sample :bd_boom
  with_fx :bitcrusher do
    with_fx :flanger do
    sample :elec_blip
      end
  end  
  sleep 0.25
end

