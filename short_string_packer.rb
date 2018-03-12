class ShortStringPacker
  ## Packs a short string into a Fixnum
  # Arguments:
  #   str - String object
  # Returns: a Fixnum object
	
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

	
  ## Unpacks a Fixnum from pack() method into a short string
  # Arguments:
  #   packed - a Fixnum object
  # Returns: a String object

  def self.unpack(int)
    str = int.to_s
    ## Need to convert this String to Array of 5 bits
    
    array = ["00101","00011","00001"]
    puts array 
    array.map! {|de| de.to_i(2)}

    otherkey = {"1"=>"a","2"=>"b","3"=>"c","4"=>"d","5"=>"e","6"=>"f","7"=>"g","8"=>"h","9"=>"i","10"=>"j","11"=>"k","12"=>"l","13"=>"m","14"=>"n","15"=>"o","16"=>"p","17"=>"q","18"=>"r","19"=>"s","20"=>"t","21"=>"u","22"=>"v","23"=>"w","24"=>"x","25"=>"y","26"=>"z"}
  
    pass=array.map! {|n| otherkey["#{n}"]}
    return pass.join
  end

end
