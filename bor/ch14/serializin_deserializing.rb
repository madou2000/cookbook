require "yaml"
 
class A
  def initialize(string, number)
    @string = string
    @number = number
  end
 
  def to_s
    "In A:\n   #{@string}, #{@number}\n"
  end
end
 
class B
  def initialize(number, a_object)
    @number = number
    @a_object = a_object
  end
 
  def to_s
    "In B: #{@number} \n  #{@a_object.to_s}\n"
  end
end
 
class C
  def initialize(b_object, a_object)
    @b_object = b_object
    @a_object = a_object
  end
 
  def to_s
    "In C:\n #{@a_object} #{@b_object}\n"
  end
end
 
a = A.new("hello world", 5)
b = B.new(7, a)
c = C.new(b, a)
 
puts c
puts
puts "...Serializing...."
puts
serialized_object = YAML::dump(c)  # YAML.dump(c)
puts serialized_object

puts
puts "...Deserializing...."
puts
puts YAML::load(serialized_object)    #YAML.load(serialized_object)

#serializing  one object at a time

File.open("blah.yaml", "w") do |file|
  (1..10).each do |index|
    file.puts YAML::dump(A.new("hello world", index))
    file.puts ""
  end
end
#deserializing
array = []
$/="\n\n"
File.open("blah.yaml", "r").each do |object|
  array <<YAML::load(object)
end
 
puts array
=begin
cela donne
In A:
   hello world, 1
In A:
   hello world, 2
In A:
   hello world, 3
In A:
   hello world, 4
In A:
   hello world, 5
In A:
   hello world, 6
In A:
   hello world, 7
In A:
   hello world, 8
In A:
   hello world, 9
In A:
   hello world, 10
=end

# Si on fait comme suit, on aura des hash au lieu d'objets
=begin
#serializing  one object at a time

File.open("blah.yaml", "w") do |file|
  (1..10).each do |index|
    file.puts YAML::dump(A.new("hello world", index))
    #file.puts ""
  end
end
#deserializing
array = []
#$/="\n\n"
File.open("blah.yaml", "r").each do |object|
  array <<YAML::load(object)
end
 
puts array       
#Cela donnera
In A:
   , 
{"number"=>1}
{"string"=>"hello world"}
In A:
   , 
{"number"=>2}
{"string"=>"hello world"}
In A:
...

=end
