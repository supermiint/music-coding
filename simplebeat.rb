# Simble beat use sample 
# Anocha Upontian Signal Music Noise Coding
use_bpm 135
live_loop :simplebeat do
  sample :drum_heavy_kick, rate: 1, amp: 1.5
  sample :sn_dub, amp: 0.7
  sleep 0.5
  sample :drum_heavy_kick, rate: rrand(0.1,1)
  sleep 0.5
  2.times do
    
    sample :elec_hi_snare, rate: rrand(3,5), hpf: 50
    sleep 0.5
    sample :drum_heavy_kick, rate: rrand(0.1,1)
    sleep 0.5
    
  end
  2.times do
    sample :drum_heavy_kick, rate: 1, hpf: -100
    sample :sn_dub, amp: 0.7
    sleep 0.5
  end
end



