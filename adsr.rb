# ADSR Envelope 
# Anocha Upontian Signal Music Noise Coding
adsr = (sample_duration :ambi_glass_rub) / 4
live_loop :ADSR do
  use_bpm 120
  sample :ambi_glass_rub, attack: adsr, attack_level: 3, decay: adsr, decay_level: 2, sustain: adsr, sustain_level: 1, release: adsr
  print adsr
  sleep 8
end
