# The Book of Ruby - http://www.sapphiresteel.com

require 'yaml'
text="Mamadou KONATE","Dramane Keita"
nbre="245"
tableau1=["el1","el2","el3"]
tableau2=[1,2,3,["a1","a2"],4,[5,6,7,[8,9,10]]]
puts( "hello world".to_yaml )
puts( 123.to_yaml )
puts( ["a1", "a2" ].to_yaml )
puts( {:h1 => 1, :h2 => 2}.to_yaml )

puts "autres..."
puts(text.to_yaml)

puts( ([23,[123,45,90,[45,65]],[456,8,11]]).to_yaml )

puts( ["a1"].to_yaml )

puts( {:h1 => 1}.to_yaml )
puts(nbre.to_yaml)
puts(tableau1.to_yaml)
puts(tableau2.to_yaml)
 puts
 puts
 puts
 y(text)
 y(tableau1)
y(tableau2)



