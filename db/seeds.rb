# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Interviewer.create(interviewer_id: 1, name: "Ali", email: "abc@gmail.com", phone:"03000000000");
Interviewer.create(interviewer_id: 2, name: "Hussain", email: "abcd@gmail.com", phone:"03010000000");


Interview.create(interview_id: 1, interview_date: "22-6-23")


Organizer.create(organizer_id: 1, organizer_name: "Ahmed", organizer_email: "abcde@gmail.com", organizer_phone:"03110000000");
