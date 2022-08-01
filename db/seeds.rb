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
    Patient.create(first_name: "Ethan", surname: "Thomas", dob: "1990/04/19", address: "12 James St, Woolloongabba 4169", phone: "0425743149", gender: "Male", ihi: "6504765474394843", credit: 10.00)
    Patient.create(first_name: "Levi", surname: "Ward", dob: "1999/3/27", address: "12 James St, Woolloongabba 4169", phone: "0493037710", gender: "Male", ihi: "7463958776351234", credit: 100.00)
    Patient.create(first_name: "Caleb", surname: "Bell", dob: "1997/09/10", address: "12 James St, Woolloongabba 4169", phone: "0426341350", gender: "Male", ihi: "7463953475351234", credit: 0.00)
    Patient.create(first_name: "Leo", surname: "Johnson", dob: "2001/11/30", address: "12 James St, Woolloongabba 4169", phone: "0434334539", gender: "Male", ihi: "6543953475351234", credit: 140.00)
    Patient.create(first_name: "Jaxon", surname: "Bennett", dob: "1996/11/16", address: "12 James St, Woolloongabba 4169", phone: "0477826793", gender: "Male", ihi: "2343953475351234", credit: 65.00)
    Patient.create(first_name: "Harvey", surname: "O'Brien", dob: "1984/02/27", address: "12 James St, Woolloongabba 4169", phone: "0419202654", gender: "Male", ihi: "8273953475350964", credit: 50.00)
    Patient.create(first_name: "Tyler", surname: "Green", dob: "198601/15", address: "12 James St, Woolloongabba 4169", phone: "0479150030", gender: "Male", ihi: "7393785746382987", credit: 10.00)
end

if Doctor.count == 0
    Doctor.create(first_name: "Elijah", surname: "Lewis", clinic: "Brisbane", address: "304 Annie St", phone: "4921234", fax: "234656856", prescriber_number: "6987832455")
    Doctor.create(first_name: "Elsie", surname: "Robertson", clinic: "Brisbane", address: "304 Annie St", phone: "4987748", fax: "231498753", prescriber_number: "4546456456")
    Doctor.create(first_name: "Ava", surname: "Murray", clinic: "Sydney", address: "56 Ann St", phone: "4965744", fax: "5647456745", prescriber_number: "8765434635")
    Doctor.create(first_name: "Violet", surname: "Parker", clinic: "Brisbane", address: "50 Bond St", phone: "4923462", fax: "45735473547", prescriber_number: "5785687856")
end

if Drug.count == 0
    Drug.create(name: "Methadone", brand_name: "Biodone", form: "liquid", strength: "5mg/ml", cost: 5)
    Drug.create(name: "Suboxone", brand_name: "Suboxone_film", form: "film", strength: "2mg/0.5mg", cost: 5)
    Drug.create(name: "Suboxone", brand_name: "Suboxone_film", form: "film", strength: "8mg/2mg", cost: 5)
    Drug.create(name: "Suboxone", brand_name: "Suboxone_film", form: "tablet", strength: "2mg/0.5mg", cost: 5)
    Drug.create(name: "Suboxone", brand_name: "Suboxone_film", form: "tablet", strength: "8mg/2mg", cost: 5)
    Drug.create(name: "Subutex", brand_name: "Subutex", form: "sublingual_tablets", strength: "0.4mg", cost: 5)
    Drug.create(name: "Subutex", brand_name: "Sublingual_tablets", form: "sublingual_tablets", strength: "2mg", cost: 5)
    Drug.create(name: "Subutex", brand_name: "Sublingual_tablets", form: "sublingual_tablets", strength: "8mg", cost: 5)
end

if Prescription.count == 0
    Prescription.create(issue_date: "12/02/2021", expiry_date: "12/03/2021", takeaway: true, doctor_id: 1, patient_id: 2, drug_id: 2, prescription_valid: true)
    Prescription.create(issue_date: "28/04/2021", expiry_date: "28/04/2021", takeaway: false, doctor_id: 1, patient_id: 1, drug_id: 1, prescription_valid: true)
    Prescription.create(issue_date: "17/06/2021", expiry_date: "17/07/2021", takeaway: false, doctor_id: 1, patient_id: 3, drug_id: 1, prescription_valid: true)
    Prescription.create(issue_date: "25/02/2021", expiry_date: "25/03/2021", takeaway: false, doctor_id: 1, patient_id: 1, drug_id: 1, prescription_valid: true)
    Prescription.create(issue_date: "22/01/2021", expiry_date: "22/02/2021", takeaway: false, doctor_id: 2, patient_id: 4, drug_id: 2, prescription_valid: true)
    Prescription.create(issue_date: "09/03/2021", expiry_date: "09/04/2021", takeaway: false, doctor_id: 3, patient_id: 2, drug_id: 1, prescription_valid: true)
    Prescription.create(issue_date: "18/04/2021", expiry_date: "18/05/2021", takeaway: false, doctor_id: 4, patient_id: 1, drug_id: 1, prescription_valid: true)
    Prescription.create(issue_date: "07/05/2021", expiry_date: "07/06/2021", takeaway: false, doctor_id: 4, patient_id: 4, drug_id: 1, prescription_valid: true)
end

if Dispense.count == 0
    Dispense.create(user_id: 1, prescription_id: 1)
    Dispense.create(user_id: 1, prescription_id: 2)
    Dispense.create(user_id: 1, prescription_id: 3)
end 

if Payment.count == 0 
    Payment.create(prescription_id: 1, patient_id: 2)
    Payment.create(prescription_id: 1, patient_id: 2)
    Payment.create(prescription_id: 1, patient_id: 2)
    Payment.create(prescription_id: 1, patient_id: 2)
end

if Note.count == 0 
    Note.create(details: "Lorem ipsum dolor sir amet", prescription_id: 1, user_id: 1)
    Note.create(details: "Lorem ipsum dolor sir amet", prescription_id: 2, user_id: 1)
    Note.create(details: "Lorem ipsum dolor sir amet", prescription_id: 3, user_id: 1)
end