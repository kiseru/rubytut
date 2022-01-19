prng =  Random::new
a = prng.rand
if a < 0.1
    puts "Монета встала на ребро"
elsif a < 0.55
    puts "Выпал орел"
else
    puts "Выпала решка"
end