# The Book of Ruby - http://www.sapphiresteel.com

puts( /abc/ =~ 'abc' )
puts( /abc/ =~ 'xyzabcxyzabc' )
puts( /abc/ =~ 'xycab' )
puts( /[abc]/ =~ 'xycba' )
str='\\[]*?{}.'
reg1=Regexp.escape(str)
puts(reg1)
reg2=Regexp.new(reg1)
puts(reg2=~  '\\[]*?{}.')