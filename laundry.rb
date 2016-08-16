def wear(ambi_swoosh)
  sample(:bass_drop_c)
  sleep(2)
end

def wash(temperature)
  play(temperature)
  sleep(1)
end
def dry(dryer_type)
  sample(dryer_type)
  sleep(1)
end
2.times do
  wear(:ambi_swoosh)
  wash(60)
  dry(:ambi_swoosh)
end
2.times do
  wear(5)
  stain = [true, false].choose
  if stain == true
    sample(:bass_hard_c)
    sleep(1)
  else
    sample(:vinyl_hiss)
    sleep(1)
  end
  wash(60)
  dry(:ambi_choir)
end
5.times do
  wear(1)
  wash(70)
  dry(:ambi_drone)
  
end