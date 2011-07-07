puts 'Bonjour,et bienvenue au clib.'
puts 'Mon nom est Monsieur Konate. Et votre nom est...'
nom=gets.chomp
if nom==nom.capitalize
	puts 'Je vous en prie, asseyez-vous,'+nom+'.'
else
	puts nom+' ? Vous voulez dire '+nom.capitalize+', non?'
	puts 'On ne vous a donc jamais appris a ecrire correctement votre nom?'
	bis=gets.chomp
	if bis.downcase=='oui'
		puts 'Hmmm...bon asseyez-vous !'
	else 
		puts 'Dehors !!'
	end
	end