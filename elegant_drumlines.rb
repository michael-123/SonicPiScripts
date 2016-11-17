# see https://www.reddit.com/r/SonicPi/comments/4q6bmq/help_requested_for_simple_drum_loops_plus_a/d4qzrl9/
use_debug false
use_bpm 160

global_sleep = 0.25

# Drum lines sequence 1-4
drumline1 = (bools 0,0,1,0, 0,0,0,0, 0,0,0,0, 1,0,0,0)
drumline2 = (bools 0,0,0,0, 1,0,1,0, 1,0,1,0, 0,0,1,0)
drumline3 = (bools 0,0,0,0, 0,0,1,0, 0,0,0,0, 0,0,1,0)
drumline4 = (bools 0,0,0,1, 0,1,0,0, 0,0,1,0, 0,0,0,1)

# Switch seperate drumlines on and off
drumline1_on = true
drumline2_on = true
drumline3_on = true
drumline4_on = false

"""
Drum lines
"""
live_loop :drumz1 do
  16.times do
    if drumline1.tick and drumline1_on
      sample :bd_zum, amp: 3.0, cutoff: 90
    end
    sleep global_sleep
  end
end

live_loop :drumz2, auto_cue: false do
  if drumline2.tick and drumline2_on
    sample :drum_cymbal_closed, amp: [0.8, 1.1, 1.1, 1.1, 3].ring.tick(:tick_amp), pan: 0.2, cutoff: rrand(120, 130)
  end
  sleep global_sleep
end

live_loop :drumz3, auto_cue: false do
  if drumline3.tick and drumline3_on
    sample :drum_snare_hard, amp: 0.8, pan: -0.2, start: 0.0
  end
  sleep global_sleep
end

live_loop :drumz4, auto_cue: false do
  if drumline4.tick and drumline4_on
    sample :bass_hit_c, amp: 0.8
    sample :drum_bass_soft, amp: [3, 4].ring.tick(:tick_amp), finish: 0.2, pan: rrand(-0.5, 0.5)
  end
  sleep global_sleep
end
"""
Drum lines end
"""
