# The Book of Ruby - http://www.sapphiresteel.com

puts "...YAML...."
require 'yaml'

f = File.open( 'friends.yml', 'w' )
YAML.dump( ["fred", "bert", "mary"], f )
f.close

File.open( 'morefriends.yml', 'w' ){ |friendsfile|	
    YAML.dump( ["sally", "agnes", "john" ], friendsfile )
}
		
File.open( 'morefriends.yml' ){ |f|	
    $arr= YAML.load(f)
}
	
myfriends = YAML.load(File.open( 'friends.yml' ))
morefriends = YAML.load(File.open( 'morefriends.yml' ))
p( myfriends )
p( morefriends)
p( $arr )

puts
puts
 
puts( myfriends )
puts
puts( morefriends )
puts
puts( $arr )



# marshal
puts "----MARSHAL........."

f = File.open( 'friends.sav', 'w' )
Marshal.dump( ["fred", "bert", "mary"], f )
f.close

File.open( 'morefriends.sav', 'w' ){ |friendsfile|	
    Marshal.dump( ["sally", "agnes", "john" ], friendsfile )
}
		
File.open( 'morefriends.sav' ){ |f|	
    $arr = Marshal.load(f)
}
	
myfriends = Marshal.load(File.open( 'friends.sav' ))
morefriends = Marshal.load(File.open( 'morefriends.sav' ))

p( myfriends )
p( morefriends )
p( $arr )

puts
puts

puts( myfriends )
puts
puts( morefriends )
puts
puts( $arr )
