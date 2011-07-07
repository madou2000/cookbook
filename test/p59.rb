#! /usr/local/bin/ruby -w 
class De

def roule
(1+rand(6)*3-3).abs
end

def dis_bjr(nom)
	"Bonjour, #{nom}"
	end

# prenons deux Des
jeu=[De::new,De::new]

# ...et lancons les.
jeu.each  {|de|puts de.roule
print de.dis_bjr('Madou')}
end


