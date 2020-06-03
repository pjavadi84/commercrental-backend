# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

amin = Customer.create(fullname: "Amin")
abc = Vendor.create(business_name: "ABC Company")
parsa = Customer.create(fullname: "Parsa Moslehi")
Equipment.create(name:"S7 Demolisher", customer: amin, vendor: abc)
Equipment.create(name:"SPG Rotary Hammer", customer: amin, vendor: abc)
Equipment.create(name:"Slab Remover", customer:parsa )
# Equipment.create(name: "Rotary Hummer", item_id: "ABS9393", category: "hammers",rental_start_date: "1/18/1999", rental_end_date: "1/19/1999", availability: true, price_per_hour: 45.0, price_per_day: 400, price_per_month: 12000, pickup:false, delivery:true, additional_comments: "This is the best hammer out there")
# Equipment.create(name:"Generator")