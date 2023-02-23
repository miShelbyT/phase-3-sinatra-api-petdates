puts "🌱 Seeding spices..."

User.create(first_name: "Shelby", last_name: "Talbs", city: "NYC", phone_number: "917-548-1003", email: "shelbytalbs@gmail.com")

User.create(first_name: "Ashlee", last_name: "Scott Gregory", city: "NYC", phone_number: "123-456-7890", email: "ashleeeee@me.com")

User.create(first_name: "Chris", last_name: "Talbert", city: "LIC", phone_number: "917-553-3976", email: "nyctalbs@gmail.com")

Pet.create(name: "Tiger Rose", gender: "female", species: "dog", breed: "Jindo", size: "medium", birthdate: Date.new(2018, 07, 04), image_url:  "https://res.cloudinary.com/doo2pim0u/image/upload/v1677106982/pets/my_favorite/jvsgf0ql1hmfyws5m6ns.jpg", user_id: User.first.id)

Pet.create(name: "Jules", gender: "female", species: "cat", breed: "Siberian", size: "medium", birthdate: Date.new(2017, 02, 14), image_url:  "https://res.cloudinary.com/doo2pim0u/image/upload/v1677107280/pet_dates/utyeowvtgoqyw6l0yxnm.jpg", user_id: User.third.id)

Pet.create(name: "Luca", gender: "male", species: "dog", breed: "Goldendoodle", size: "medium", birthdate: Date.new(2019, 12, 10), image_url:  "https://res.cloudinary.com/doo2pim0u/image/upload/v1677106982/e67l1rz3yr1jufe1qvq6.png", user_id: User.second.id)

Pet.create(name: "Heidi", gender: "female", species: "dog", breed: "Biiiig", size: "XXL", birthdate: Date.new(2019, 12, 25), image_url:  "https://res.cloudinary.com/doo2pim0u/image/upload/v1677107140/pet_dates/Heidi.jpg", user_id: User.second.id)

puts "✅ Done seeding!"
