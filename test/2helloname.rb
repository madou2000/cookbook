print('Votre nom stp:')
nom=gets.chomp
puts
print('Saisissez le CAHT:')
caht=gets.chomp.to_f
puts
print('Saisissez le taux de TVA:')
tva=gets.chomp.to_f
puts
puts "Hello #{nom}, la taxe sur #{caht} est #{caht*tva/100}, donc le CATTC est #{caht+caht*tva/100}" 
puts "\n\t#{(1+2)*3}\nGoodbye"
