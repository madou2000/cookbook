# The Book of Ruby - http://www.sapphiresteel.com

puts( /^a/ =~ 'abc' )
puts( /^b/ =~ 'abc' )
puts( /c$/ =~ 'abc' )
puts( /b$/ =~ 'bgtrbecdeckcb' )
puts( /^abc/ =~ 'abc' )   
puts( /*abc$/ =~ 'cabcabccbdabc' )   
puts( /abc/ =~ 'abc' )   