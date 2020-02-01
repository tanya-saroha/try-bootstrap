# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(role: 'admin', full_name: "Tanya Saroha", status: "active", email: "tanya@gmail.com", mobile_number: "7350547873")
User.create(role: 'admin', full_name: "Priyanka Yadav", status: "active", email: "priyanka@yahoo.co.in", mobile_number: "7507348462")
User.create(role: 'customer_executive', full_name: "Smita Yadav", status: "active", email: "smit@gmail.com", mobile_number: "7769966539")
User.create(role: 'customer_executive', full_name: "Jaya Singh", status: "pending", email: "jaya@gmail.com", mobile_number: "7769942281")
User.create(role: 'customer_executive', full_name: "Shimita Rudra", status: "pending", email: "shimta@gmail.com", mobile_number: "9765684847")
User.create(role: 'customer_executive', full_name: "Samridhi Kalra", status: "inactive", email: "kalra@gmail.com", mobile_number: "7769987577")
User.create(role: 'customer_executive', full_name: "Ayesha Rao", status: "inactive", email: "ayesha.rao@gmail.com", mobile_number: "7030620556")
User.create(role: 'admin', full_name: "Lavanya Killada", status: "pending", email: "killada0877@gmail.com", mobile_number: "7769986787")
