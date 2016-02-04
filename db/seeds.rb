# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


City.create!(name: "Mumbai")

Locality.create!(name: "Powai", city_id: 1)
Locality.create!(name: "Andheri", city_id: 1)
Locality.create!(name: "Nariman Point", city_id: 1)
Locality.create!(name: "Marine Lines", city_id: 1)
Locality.create!(name: "Dadar", city_id: 1)
Locality.create!(name: "Prabhadevi", city_id: 1)
Locality.create!(name: "Bandra", city_id: 1)

House.create!(#type, owner,
							title: "ABC Society", bhk: 2, no_of_beds: 4, allowed_gender: "male", locality_id: 1, #pincode, lat, long, landmark,
							address: "Flat No. 904, Alpha Society, Opp. Beta Restaurant, JVLR Road")
House.create!(title: "Sadan", bhk: 3, no_of_beds: 5, allowed_gender: "female", locality_id: 2, address: "Flat No. 102, A Society, Opp. CCD, JP Road")
House.create!(title: "Nivas",bhk: 2, no_of_beds: 4, allowed_gender: "male", locality_id: 3, address: "Flat No. 331, A Society, Opp. ABC, XYZ Road")
House.create!(title: "Shree Nivas", bhk: 3, no_of_beds: 6, allowed_gender: "female", locality_id: 4, address: "Flat No. 441, A Society, Opp. ABC, XYZ Road")
House.create!(title: "Sample Title", bhk: 2, no_of_beds: 4, allowed_gender: "male", locality_id: 5, address: "Flat No. 551, A Society, Opp. ABC, XYZ Road")
House.create!(title: "House Title", bhk: 3, no_of_beds: 5, allowed_gender: "male", locality_id: 6, address: "Flat No. 627, A Society, Opp. ABC, XYZ Road")
House.create!(title: "Housing Society",bhk: 2, no_of_beds: 4, allowed_gender: "female", locality_id: 7, address: "Flat No. 792, A Society, Opp. ABC, XYZ Road")


Bed.create!(house_id: 1, #tenant_id,
						rent: 12500, security_deposit: 25000, room_occupancy: 2)
Bed.create!(house_id: 2, rent: 14000, security_deposit: 32000, room_occupancy: 1)
Bed.create!(house_id: 3, rent: 16000, security_deposit: 32000, room_occupancy: 2)
Bed.create!(house_id: 4, rent: 15000, security_deposit: 32000, room_occupancy: 2)
Bed.create!(house_id: 5, rent: 12500, security_deposit: 32000, room_occupancy: 2)
Bed.create!(house_id: 6, rent: 14000, security_deposit: 32000, room_occupancy: 1)
Bed.create!(house_id: 7, rent: 15000, security_deposit: 32000, room_occupancy: 2)

Amenity.create!(name: "Washing Machine")
Amenity.create!(name: "Geyser")

House.find(1).house_amenity_relationships.create!(amenity_id: 1)
House.find(1).house_amenity_relationships.create!(amenity_id: 2)
House.find(2).house_amenity_relationships.create!(amenity_id: 2)

Locality.find_by(name: "Powai").neighborhoods.create!(neighbor_locality: Locality.find_by(name: "Andheri"), distance: 5.8)
Locality.find_by(name: "Nariman Point").neighborhoods.create!(neighbor_locality: Locality.find_by(name: "Marine Lines"), distance: 2.8)
Locality.find_by(name: "Dadar").neighborhoods.create!(neighbor_locality: Locality.find_by(name: "Prabhadevi"), distance: 2.3)
Locality.find_by(name: "Dadar").neighborhoods.create!(neighbor_locality: Locality.find_by(name: "Bandra"), distance: 5)
