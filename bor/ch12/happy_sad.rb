# The Book of Ruby - http://www.sapphiresteel.com

module Happy
	def Happy.mood
		return "happy"
	end
	
	def expression
		return "smiling"
	end
end

module Sad
	def Sad.mood
		return "sad"
	end
	
	def expression
		return "frowning"
	end
end

class Person
	include Sad
	include Happy
	
	attr_accessor :mood
	def initialize
		@mood = Happy.mood
	end
end

p1 = Person.new
puts(p1.mood)
puts(p1.expression)

