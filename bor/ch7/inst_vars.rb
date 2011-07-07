# The Book of Ruby - http://www.sapphiresteel.com

class MyClass
	@@classvar = 600
	@instvar = 400
	
	def MyClass.classMethod
		if @instvar == nil then
			@instvar = 10
		else
			@instvar += 10
		end
	end
	
	def instanceMethod
		if @instvar == nil then
			@instvar = 1
		else
			@instvar += 1
		end				
	end		
	
end



ob = MyClass.new

puts MyClass.instance_variable_get(:@instvar)
	puts( "ob @instvar= #{ob.instance_variable_get(:@instvar)}" )
puts( '--------------' )
for i in 0..2 do	
	# MyClass.classMethod
	ob.instanceMethod
	puts( "MyClass @instvar= #{MyClass.instance_variable_get(:@instvar)}" )
	puts( "ob @instvar= #{ob.instance_variable_get(:@instvar)}" )
	MyClass.classMethod
	puts( "MyClass @@classvar= #{MyClass.instance_variable_get(:@instvar)}" )
end