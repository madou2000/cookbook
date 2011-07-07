puts 'Bonjour, quel est donc votre premier prenom?'
prenom1 = gets.chomp
puts 'Votre deuxieme prenom?'
prenom2 = gets.chomp
puts 'Votre nom?'
nom = gets.chomp
puts 'Fecilitation! '+prenom1+' '+prenom2+' '+nom
puts 'Ravi de faire votre connaissance '+prenom1+' '+prenom2+' '+nom+'. :-)'
puts 'Quel est votre nombre favori?'
nombrep=gets.chomp.to_i
nombrep2=nombrep+1
puts 'Je vous propose, '+prenom1+' '+prenom2+' '+nom+' le nombre '+nombrep2.to_s+' car je pense que c\'est beaucoup mieux.' 



