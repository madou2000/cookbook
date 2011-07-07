#Old one
#class SayHelloController < ApplicationController
#	def index
#		render({ :text => "Hello world"})
#	end
# def bye
# render({ :text => "Bye bye"})
# end
# end


# Delete all code in say_hello_controller.rb and copy the
# code below into that file when indicated in the book
#sayhello1.rb
#class SayHelloController < ApplicationController
#	def showFamily( aClass, msg )	
#	  if (aClass != nil) then	
#	     msg += "<br />#{aClass}"  
#	     showFamily( aClass.superclass, msg )
#	  else
#		 render :text => msg
#	  end   
#	end
#
#	def index
#	   showFamily( self.class, "Class Hierarchy of self..." )
#	end
 #end
 
 #sayhello2.rb
class SayHelloController < ApplicationController
   def showFamily( aClass, msg )   
     if (aClass != nil) then   
        msg += "<li>#{aClass}</li>"  
        showFamily( aClass.superclass, msg )
     else
       return msg
     end   
   end

   def index
     @heading="<h1> This is the Controller's Class Hierarchy </h1>"
      @class_hierarchy = "<ul>#{showFamily( self.class, "" )}</ul>"
   end 
end


