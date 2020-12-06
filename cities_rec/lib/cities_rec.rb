require "cities_rec/version"
require "json"

module CitiesRec
  
  class Error < StandardError; end
  	
  	class Plate     
		
		def self.parse(plate_code)       
			cities = JSON.parse(File.read('C:/Users/csume/OneDrive/Masaüstü/ruby/w3-homework-Sumeyragokmen/cities_rec/lib/cities.json'))       
			cities.select { |k,v| k == "#{plate_code}" }.values     
		end  
	end 
end
