class Dog
	@@nbre_chiens=0
	attr_accessor:name
	def initialize 
		@name=""
		@@nbre_chiens+=1
		end
def dog_name
print "What's the name of your dog? "
@name=gets.chomp.capitalize
puts
puts "Oh #{@name}!, this is a nice name." 
puts
end
def montre_moi
return "#{@@nbre_chiens}"	
end
end
c1=Dog.new
c2=Dog.new
c1.dog_name
c2.dog_name
puts "I see You have #{c1.montre_moi} chiens: #{@name.each {|a_name| puts(a_name.dog_name)}}."





