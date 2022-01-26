prng = Random::new
a = prng.rand(0..1)
if a == 1
    puts "Выпал орел"
else
    puts "Выпала решка"
end
