# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.destroy_all

Admin.create!([
    {
        name: "Super User1",
        email: "superuser1@gmail.com",
        password: "$2a$12$PB5QHORmbXy/bOOphIMMeO/NkQDbrdy.aUaUaCCKCdoZka5mfNhjq"
    },
])
p "Created #{Admin.count} admins"