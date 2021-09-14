## Batur
## 15.09.2021

use_bpm 60
loop_length=0
6.times do
  sample :drum_heavy_kick
  sample :drum_bass_soft
  sleep 0.25
  
  
  2.times do
    
    sample :drum_bass_hard
    sleep 0.25
    sample :drum_snare_hard, amp: 0.9
    sleep 0.50
  end
  
  
  with_fx :sound_out_stereo do
    sample :guit_em9, attack: 0.25 , release: 0.0150 , pan: rrand(-1,1), release: 70, pitch: 0.1
    
    sample :drum_snare_soft, amp: 0.5, attack: 0.5, release: 0.5, relax_time: 1
    
    sleep 0.5
  end
  
  sample :drum_heavy_kick
  sleep 0.25
  
  if (loop_length >= 1)
    sample :drum_cymbal_closed, cutoff: 130
    sample :drum_tom_lo_soft
    sleep 0.25
    
  else
    sleep 0.25
  end
  
  if(loop_length >= 2 && loop_length <= 4)
    sample :guit_e_slide
    
  end
  
  if(loop_length == 6)
    sample :bd_haus
    
  end
  loop_length=loop_length+1
  
end
