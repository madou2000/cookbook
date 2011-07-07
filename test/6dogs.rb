class Chien
	def nommer(nom)
		@mon_nom=nom
	end
	def afficher_mon_nom
		return @mon_nom
	end
	
	def abouer
		return "Woof...woof!!"
	end
end	
	mon_chien=Chien.new
	ton_chien=Chien.new
	mon_chien.nommer('Dougoukolo')
	ton_chien.nommer('Sankolo')
	puts "Mon chien s'appelle #{mon_chien.afficher_mon_nom}"
	puts mon_chien.abouer
	puts "Ton chien s'appelle #{ton_chien.afficher_mon_nom}"
	puts "inspection: #{mon_chien.inspect}"
	