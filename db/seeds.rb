require 'ffaker'

Restaurant.delete_all

5.times do name: FFaker::Address.country,
           street: FFaker::Address.street_name,
           zip_code: FFaker::Address.country_code,
           city: FFaker::Address.city,
           food_style: FFaker::Address.country)}

 Restaurant.create(name:,
		street: ,
		zip_code:,
		city: ,
		food_style: )

end


puts "Created #{Restaurant.count} restaurants"
