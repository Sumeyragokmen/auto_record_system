require 'json'
require 'yaml'
require 'cities_rec'

class Auto_record
    attr_reader :cars

      def initialize
          load
      end
        
      def add_car(name, model, plate)           
          @cars << Car_info.new(name, model, plate)
          save
          @cars.last
      end

      def search(plate_code)

      	  checking = @cars.select{|p| p.plate == plate_code.upcase }

      	  if checking.any?
      	  	puts "#{checking.first.name} - #{CitiesRec::Plate.parse(plate_code)} - #{checking.first.model} - #{checking.first.plate}"
      	  else 
      	  	puts "#{plate_code} plakalı araç sistemde yok."
      	  end

      end

        private

      def save
          File.open("auto_record.yml", "w")  { |file| file.write(@cars.to_yaml) }
      end

      def load
    		if File.exist?('auto_record.yml') && YAML.load(File.read('auto_record.yml'))
     			@cars = YAML.load(File.read('auto_record.yml'))
   	 		else
     		  @cars = Array.new
    		end
    		
    		@cars    	
    	end
end

class Car_info
    attr_accessor :model, :name, :plate
   
    def initialize(name, model, plate)
        @name = name
        @model = model
        @plate = plate
    end   
end  
      
		car = Auto_record.new

    command = ARGV[0]
 		 
 		if command == '-s'
 			puts car.search(ARGV[1])

 		else
    	puts "Plaka: "
    	plate_code = gets.chomp.upcase
    	
    	registered_vehicles = YAML.load(File.read("auto_record.yml"))
    	control = registered_vehicles.select{|p| p.plate == plate_code}

    	  if plate_code[0 ,2].to_i < 1 || plate_code[0, 2].to_i > 81
    	  	puts "Plaka formatı uygun değil. (01-81  arasında giriniz.)"
    	  	exit 
    	  end

    	  if control.any?
    	  	puts "Bu plakalı araç var."
    	  	exit
    	  end

    	puts "Model: "
    	car_model = gets.chomp.upcase
    	
    	models_file = JSON.parse(File.read('models.json'))
    	models = models_file.map { |model| model['name'] }
    		
    		if models.include?(car_model) == false
    			puts "Bulunmayan araç modeli."
          exit
    		end

   	  puts "Name and Surname: "
   		name_surname = gets.chomp.upcase
    
    	number = car.add_car(name_surname, car_model, plate_code)
    	puts "#{number.plate} was added to the list."

    end