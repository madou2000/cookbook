# The Book of Ruby - http://www.sapphiresteel.com
class Una10
def unAdix
	for i in (1..10) do
	puts( i )
end
end
end
cpte=Una10.new
hdoc1=<<FIN
Ca c'est un heredoc. C'est une fonction tres interessante pour des textes multilignes.
Merci a Ruby pour cette technologie si avancee.
C'etait tout juste un test.
#{cpte.unAdix}
FIN


hdoc2=<<'Amour'
Ca c'est un heredoc. C'est une fonction tres interessante pour des textes multilignes.
Merci a Ruby pour cette technologie si avancee.
C'etait tout juste un test.
#{cpte.unAdix}
Amour
puts '----hdoc1...'
puts hdoc1
puts
puts
puts '----hdoc2...'
puts hdoc2
puts
puts cpte.unAdix