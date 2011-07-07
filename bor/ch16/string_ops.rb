# The Book of Ruby - http://www.sapphiresteel.com

s = "def myMethod # a comment"
s2 = "The cat sat on the mat"
s3 = "The cat sat on the mat"

puts( "---split---" )
p( s.split( /m.*d/ ) )
p( s.split( /\s/ ) )
p( s.split( // ) )
puts( "---sub---" )
p( s.sub( /m.*d/, "yourFunction" ) )
puts( s.sub( /m.*d/, "yourFunction" ) )
p( s2.sub( /at/, "aterpillar" ) )
puts s3
puts( s3.sub!( /at/, "aterpillar" ) )
puts s3
puts( "---gsub---" )
p( s.gsub( /m.*d/, "yourFunction" ) )
p( s2.gsub( /at/, "aterpillar" ) )