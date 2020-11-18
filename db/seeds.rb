puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
mcdonald = { name: "McDonald", address: "18 rue du Fast food", phone_number: "01 56 76 34 23", category: "chinese" }
lamandale = { name: "La Mandale", address: "5 rue des gourmets", phone_number: "01 56 76 34 23", category: "italian" }
kfc = { name: "KFC", address: "23 rue des Gros",phone_number: "01 56 76 34 23", category: "japanese" }
bigfernand = { name: "Big Fernand", address: "8 rue du Bon burger", phone_number: "01 56 76 34 23", category: "french" }
lasfritass = { name: "Las Fritass", address: "1 rue de la pomme de terre", phone_number: "01 56 76 34 23", category: "belgian" }

[mcdonald, lamandale, kfc, bigfernand, lasfritass].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
