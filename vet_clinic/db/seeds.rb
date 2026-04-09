# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end




### OWNERS

owner1 = Owner.create(
  first_name: "Domingo",
  last_name: "De la Fuente",
  email: "domingo@mail.com",
  phone: "123456789",
  address: "Lo Barnechea"
)

owner2 = Owner.create(
  first_name: "Juan",
  last_name: "Perez",
  email: "juan@mail.com",
  phone: "987654321",
  address: "Santiago"
)

owner3 = Owner.create(
  first_name: "Maria",
  last_name: "Gonzalez",
  email: "maria@mail.com",
  phone: "555555555",
  address: "Providencia"
)


### PETS

pet1 = Pet.create(
  name: "Firulais",
  species: "Dog",
  breed: "Labrador",
  date_of_birth: "2020-05-10",
  weight: 25.5,
  owner: owner1
)

pet2 = Pet.create(
  name: "Michi",
  species: "Cat",
  breed: "Siames",
  date_of_birth: "2021-03-15",
  weight: 4.2,
  owner: owner1
)

pet3 = Pet.create(
  name: "Rocky",
  species: "Dog",
  breed: "Bulldog",
  date_of_birth: "2019-07-20",
  weight: 18.0,
  owner: owner2
)

pet4 = Pet.create(
  name: "Luna",
  species: "Cat",
  breed: "Persa",
  date_of_birth: "2022-01-10",
  weight: 3.8,
  owner: owner3
)

pet5 = Pet.create(
  name: "Bunny",
  species: "Rabbit",
  breed: "Mini Lop",
  date_of_birth: "2021-11-05",
  weight: 2.1,
  owner: owner3
)


### VETS

vet1 = Vet.create(
  first_name: "Carlos",
  last_name: "Lopez",
  email: "carlos@vet.com",
  phone: "111111111",
  specialization: "General Practice"
)

vet2 = Vet.create(
  first_name: "Ana",
  last_name: "Martinez",
  email: "ana@vet.com",
  phone: "222222222",
  specialization: "Surgery"
)


### APPOINTMENTS

appointment1 = Appointment.create(
  pet: pet1,
  vet: vet1,
  date: Time.now,
  reason: "Checkup",
  status: 0
)

appointment2 = Appointment.create(
  pet: pet2,
  vet: vet2,
  date: Time.now,
  reason: "Vaccination",
  status: 1
)

appointment3 = Appointment.create(
  pet: pet3,
  vet: vet1,
  date: Time.now,
  reason: "Injury",
  status: 2
)

appointment4 = Appointment.create(
  pet: pet4,
  vet: vet2,
  date: Time.now,
  reason: "Skin issue",
  status: 3
)

appointment5 = Appointment.create(
  pet: pet5,
  vet: vet1,
  date: Time.now,
  reason: "Routine check",
  status: 2
)


### TREATMENTS

Treatment.create(
  appointment: appointment2,
  name: "Vaccine",
  medication: "Rabies Vaccine",
  dosage: "1 dose",
  notes: "No issues",
  administered_at: Time.now
)

Treatment.create(
  appointment: appointment3,
  name: "Bandage",
  medication: "Antibiotic cream",
  dosage: "Twice daily",
  notes: "Recovering well",
  administered_at: Time.now
)

Treatment.create(
  appointment: appointment3,
  name: "Pain relief",
  medication: "Ibuprofen",
  dosage: "Once daily",
  notes: "Monitor closely",
  administered_at: Time.now
)

Treatment.create(
  appointment: appointment5,
  name: "General check",
  medication: "None",
  dosage: "N/A",
  notes: "Healthy",
  administered_at: Time.now
)

Treatment.create(
  appointment: appointment2,
  name: "Deworming",
  medication: "Antiparasitic",
  dosage: "Single dose",
  notes: "Follow-up in 3 months",
  administered_at: Time.now
)