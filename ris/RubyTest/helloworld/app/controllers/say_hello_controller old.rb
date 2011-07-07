class SayHelloController < ApplicationController
	def index
		render({ :text => "Hello world"})
	end
def bye
render({ :text => "Bye bye"})
end
end


