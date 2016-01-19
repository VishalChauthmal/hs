# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


City.create!(name: "Mumbai")

Locality.create!(name: "Powai", city_id: 1)
Locality.create!(name: "Andheri West", city_id: 1)

House.create!(#type
							#owner, index: true, foreign_key: true
							bhk: 2,
							no_of_beds: 4,
							allowed_gender: "male",
							locality_id: 1,
							#pincode
							#lat
							#long
							address: "Flat No. 904, Alpha Society, Opp. Beta Restaurant, JVLR Road"
							#landmark
						)
House.create!(#type
							#owner, index: true, foreign_key: true
							bhk: 3,
							no_of_beds: 5,
							allowed_gender: "female",
							locality_id: 2,
							#pincode
							#lat
							#long
							address: "Flat No. 102, A Society, Opp. CCD, JP Road"
							#landmark
						)

Bed.create!(house_id: 1,
						#tenant_id
						rent: 12500,
						security_deposit: 25000,
						room_occupancy: 2)
Bed.create!(house_id: 2,
						#tenant_id
						rent: 15000,
						security_deposit: 32000,
						room_occupancy: 1)

Amenity.create!(name: "Washing Machine")
Amenity.create!(name: "Geyser")

House.find(1).house_amenity_relationships.create!(amenity_id: 1)
House.find(1).house_amenity_relationships.create!(amenity_id: 2)
House.find(2).house_amenity_relationships.create!(amenity_id: 2)

