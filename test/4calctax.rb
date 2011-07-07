print "Saisissez votre nom svp: "
nom=gets.chomp
print "Saisissez le CAHT: "
caht=gets.chomp.to_f
print "Saisissez le % de TVA: "
tva=gets.chomp.to_f
tva=tva*caht/100
cattc=caht+tva
puts "Hello #{nom}, le montant de la TVA sur #{caht} est #{tva} donc le CATTC est #{cattc}.\nMerci bien et bye!"
=begin 
Ruby est vraiment un outil formidable 
=end
puts "Ruby est formidable"