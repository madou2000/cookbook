# The Book of Ruby - http://www.sapphiresteel.com

s = 'start '
a = Thread.new { (1..10).each{				
				s << 'a' 
				} 
			} 
b = Thread.new { (1..10).each{								
				s << 'b' 
				} 
			} 
                Thread.main.priority=100    
a.priority=0
b.priority=-1
[a,b].each{|t| t.join}
puts( "#{s} end" )