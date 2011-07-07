# The Book of Ruby - http://www.sapphiresteel.com

class MyClass
	
	def MyClass.classMethod
		return("This is a class method" )
	end
	
	def instanceMethod
		"This is an instance method" 
	end
		
end
# A utility method to print line numbers before inspecting
# values. To make it easier to match output with the
# numbered tests below
@linenum = 0
def wr( exp )
    @linenum += 1
	print( "(\##{@linenum}) " )
	#p( exp )
	puts exp
end

ob = MyClass.new

t1=MyClass.classMethod
		# The following are errors...
# MyClass.instanceMethod
# ob.classMethod
t2=ob.instanceMethod
wr(t1) 
wr(t2)
