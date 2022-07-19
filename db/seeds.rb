# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if User.count == 0 
    User.create(first_name: "Calvin", surname: "Dexter", admin: true, email: "calv@email.com", username: "calv-admin", password: "123456", password_confirmation: "123456")
    User.create(first_name: "Eman", surname: "Youssef", admin: true, email: "eman@email.com", username: "eman-admin", password: "123456", password_confirmation: "123456")
end

if Patient.count == 0
    Patient.create(first_name: "Ethan", surname: "Thomas", dob: "19/04/1990", address: "12 James St, Woolloongabba 4169", phone: "0425743149", gender: "Male", ihi: "6504765474394843", credit: 10.00)
    Patient.create(first_name: "Levi", surname: "Ward", dob: "03/27/1999", address: "12 James St, Woolloongabba 4169", phone: "0493037710", gender: "Male", ihi: "7463958776351234", credit: 100.00)
    Patient.create(first_name: "Caleb", surname: "Bell", dob: "09/10/1997", address: "12 James St, Woolloongabba 4169", phone: "0426341350", gender: "Male", ihi: "7463953475351234", credit: 0.00)
    Patient.create(first_name: "Leo", surname: "Johnson", dob: "11/30/2001", address: "12 James St, Woolloongabba 4169", phone: "0434334539", gender: "Male", ihi: "6543953475351234", credit: 140.00)
    Patient.create(first_name: "Jaxon", surname: "Bennett", dob: "11/16/1996", address: "12 James St, Woolloongabba 4169", phone: "0477826793", gender: "Male", ihi: "2343953475351234", credit: 65.00)
    Patient.create(first_name: "Harvey", surname: "O'Brien", dob: "02/27/1984", address: "12 James St, Woolloongabba 4169", phone: "0419202654", gender: "Male", ihi: "8273953475350964", credit: 50.00)
    Patient.create(first_name: "Tyler", surname: "Green", dob: "01/15/1986", address: "12 James St, Woolloongabba 4169", phone: "0479150030", gender: "Male", ihi: "7393785746382987", credit: 10.00)
end

if Doctor.count == 0
    Doctor.create(first_name: "Elijah", surname: "Lewis", clinic: "Brisbane", address: "304 Annie St", phone: "4921234", fax: "234656856", prescriber_number: "6987832455")
    Doctor.create(first_name: "Elsie", surname: "Robertson", clinic: "Brisbane", address: "304 Annie St", phone: "4987748", fax: "231498753", prescriber_number: "4546456456")
    Doctor.create(first_name: "Ava", surname: "Murray", clinic: "Sydney", address: "56 Ann St", phone: "4965744", fax: "5647456745", prescriber_number: "8765434635")
    Doctor.create(first_name: "Violet", surname: "Parker", clinic: "Brisbane", address: "50 Bond St", phone: "4923462", fax: "45735473547", prescriber_number: "5785687856")
end