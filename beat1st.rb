# Welcome to Sonic Pi v3.1
use_bpm 50

live_loop :drumline do
  2.times do
    sample :bd_haus, rate: 1, amp: 5, attack: 0.1, sustain: 0.5, release: 2
    sleep 0.5
    sample :perc_snap
    sleep 0.5
  end
  2.times do
    sample :bd_haus, rate: 1.1, amp: 5, attack: 0.1, sustain: 0.5, release: 2
    sleep 0.5
    sample :drum_cymbal_open, rate: 0.9, amp: 0.7, finish: 0.05
    sample :perc_snap
    sleep 0.5
  end
end
f = [35,40,45,50,55,60,65,70,75,80,85,90,95,100,105,110,115,120,125,129,125,
     120,115,110,105,100,95,90,85,80,75,70,65,60,55,50,45,40,35]
live_loop :arp do
  with_fx :reverb do
    for i in f
      use_synth :zawa
      arp = (ring :e3, :e4, :r, :g5, :r, :c4, :r, :a3, :c3)
      play arp.tick, release: 0.3, cutoff: i
      sleep 0.25
    end
  end
end