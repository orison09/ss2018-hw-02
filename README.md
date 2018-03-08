def self.pack(str)
  array = []
	key = {"a"=> 1, "b"=> 2,"c"=>3,"d"=>4,"e"=>5,"f"=>6,"g"=>7,"h"=>8,"i"=>9,"j"=>10,"k"=>11,"l"=>12,"m"=>13,"n"=>14,"o"=>15,"p"=>16,"q"=>17,"r"=>18,"s"=>19,"t"=>20,"u"=>21,"v"=>22,"w"=>23,"x"=>24,"y"=>25,"z"=>26}
  
	str.each_char do |n|
	  array.push(key[n])
	 end
	 
	 ##puts array
	 
	 array.map! {|value| value.to_s(2)}
	 ##array.map! {|value| value.to_i(2)}
	 
	 array.map! do |number|
	   number.rjust(5,'0')
	 end 
	 
	 packed = array.join()
   ##puts packed
	 return packed.to_i(10)
end





def self.unpack(int)
    str = int.to_s
    puts str
    puts str.class
   
    
end



test =  self.pack("muzi")
##puts test 

self.unpack(test)
