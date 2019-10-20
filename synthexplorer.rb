synth = [:beep, :blade, :bnoise, :chipbass, :chiplead,
         :chipnoise, :cnoise, :dark_ambience, :dpulse,
         :dsaw, :dtri, :dull_bell, :fm, :gnoise, :growl,
         :hollow, :hoover, :noise, :piano, :pluck, :pnoise,
         :pretty_bell, :prophet, :pulse, :saw, :sine, :square,
         :subpulse, :supersaw, :tb303, :tech_saws, :tri, :zawa]
for i in synth
  print i
  use_synth i
  play 53
  sleep 1
end