# The Book of Ruby - http://www.sapphiresteel.com

require "yaml"
t="--- \n- fred\n- bert\n- mary\n"
    arr = ["fred", "bert", "mary"]			
    yaml_arr = YAML.dump( arr )
	puts( yaml_arr )
    p( yaml_arr )
    p(t)
