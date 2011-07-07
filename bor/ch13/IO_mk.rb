f = File.new("licence.txt", "a")
f.puts
f.puts( "I", "wandered", "lonely", "as", "a", "cloud" )
f.close
charcount=0
linescount=0
f=File.new("licence.txt","r")
while !(f.eof) do
 c=f.getc()
         if (c==10) then
linescount+=1
puts "<End oft line nr:#{linescount}>"
     else
	     putc(c)
charcount+=1
     

end
end
	
	if f.eof then 
	puts( "<End Of File>" ) 
end

f.close

puts("This file contains #{linescount} lines and #{charcount} characters." )
