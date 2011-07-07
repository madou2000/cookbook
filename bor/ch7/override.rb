# The Book of Ruby - http://www.sapphiresteel.com

class MyClass
	def sayHello
		return "Hello from MyClass"
	end
	
	def sayGoodbye
		return "Goodbye from MyClass" 
	end
end

class MyOtherClass < MyClass
		#overrides (and replaces) MyClass.sayHello
	def sayHello	
		return "Hello from MyOtherClass"
	end
	
		# overrides MyClass.sayHello but first calls that method 
		# with super. So this version "adds to" MyClass.sayHello
	def sayGoodbye	
		return super << " and also from MyOtherClass"
	end
		# overrides default to_s method
	def to_s
		return "I am an instance of the #{self.class} class"
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
	puts(exp)
end


myclassob = MyClass.new
myotherclassob  = MyOtherClass.new

wr( myclassob.sayHello )      #1
wr( myclassob.sayGoodbye )  #2
wr( myclassob.to_s )    #3

wr( myotherclassob.sayHello ) #4
wr( myotherclassob.sayGoodbye ) #5
wr( myotherclassob.to_s ) #6

