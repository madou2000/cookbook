# The Book of Ruby - http://www.sapphiresteel.com

count = 0
countline=0
File.foreach( 'regex1.rb' ){ |line|	
        countline=count
	count += line.scan( /[a-z0-9A-Z]+/ ).size
	puts count-countline
}


##Uncomment the following to display numbered words
 
#count = 0
#File.foreach( 'regex1.rb' ){ |line|	
#	line.scan( /[a-z0-9A-Z]+/ ).each{|word| 
#		count +=1
#		print( "[#{count}] #{word}\n" ) 
#		}
#}

puts( "There are #{count} words in this file." )

