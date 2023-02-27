[Stftime cheatsheet 🙏](https://devhints.io/strftime)

Users -< Pets -< PetMeets >- Meetups
# realized that i can't use Date class because it's a reserved word. oops.

users
first_name (string)
first_name (string)
city (string)
phone_number (string) needs regex
email (string)


pets
name (string)
gender (string)
species (string)
breed (string)
size (if dog) (string)
birthdate (date)
user_id (int)
image_url (string)

pet_meets
pet_id (int)
meetup_id (int)

meetups
time (datetime)
location (string)
