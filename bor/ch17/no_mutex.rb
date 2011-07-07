# The Book of Ruby - http://www.sapphiresteel.com

$i = 0

a = Thread.new { 
	1000000.times{ $i += 1 }									
}
				 

b = Thread.new {				
	1000000.times{ $i += 1 }
} 
c = Thread.new {				
	1000000.times{ $i += 1 }
} 
    
  [a,b,c].each {|t| t.join}                  

puts( $i )