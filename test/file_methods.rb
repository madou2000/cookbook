# The Book of Ruby - http://www.sapphiresteel.com

fn = 'file_methods.rb'
if File.exist?(fn) then
	puts(File.expand_path(fn))
	puts(File.basename(fn))
	puts(File.dirname(fn))
	puts(File.extname(fn))
	puts(File.mtime(fn))
	puts("#{File.size(fn)} bytes")
else
	puts( "Can't find file!")
end
# Lire le contenu entier d'un fichier dans une chaine
monFichier=File.new("file_methods.rb")
mytext=monFichier.read
puts
puts '----Visualisation du contenu de mytext-----'
puts mytext
puts '---Fin Visualisation du contenu de mytext-----'
puts
puts 'lire dans un tableau'
puts
puts

mesLignes = IO.readlines("file_methods.rb")
puts mesLignes[0]   # affichage de la 1ere ligne
puts 'Fin lire dans un tableau'
puts
puts
puts
puts '...Lire ligne par ligne ....'
puts
puts
monFichier = File.open("file_methods.rb")
while laLigneLue = monFichier.gets
	puts laLigneLue
end
puts
puts
puts '..Fin Lire ligne par ligne ....'
