# The Book of Ruby - http://www.sapphiresteel.com
#Thread.main.kill       # without comment this will prevent this program from running.
words = ["hello", "world", "goodbye", "mars" ]
numbers = [1,2,3,4,5,6,7,8,9,10]

startTime = Time.new
puts( "Start: %10.9f" % startTime )

t1=Thread.new{ 
	words.each{ |word| puts( word ) }
}.join

t2=Thread.new{ 
	numbers.each{ |number| puts( number ) }
}

t2.join


#sleep( 5) 

endTime = Time.new
puts( "End: %10.9f" % endTime.to_f )
totalTime = endTime-startTime
puts( "Total Time: %10.9f" % totalTime.to_f )

