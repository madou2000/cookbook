# The Book of Ruby - http://www.sapphiresteel.com

s = 'start '
a = Thread.new { (1..10).each{				
				s << 'a' 
				Thread.pass
				} 
			} 
b = Thread.new { (1..10).each{								
				s << 'b' 
				Thread.pass
				} 
			} 
                    
[a,b].each{|t| t.join}
puts( "#{s} end" )