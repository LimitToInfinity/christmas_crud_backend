# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

drone = Present.create({ 
    name: "Drone", 
    image: "https://images-na.ssl-images-amazon.com/images/I/41yafb6F%2BVL._AC_SY355_.jpg",
})

book = Present.create({
    name: "Book",
    image: "https://api.time.com/wp-content/uploads/2015/06/521811839-copy.jpg",
})

scarf = Present.create({
    name: "Scarf",
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTE8saxI2SKi3BGqlehKS1SQENv8M3kS5bnVRsmttaXpQ9hRpF2",
})

Rating.create({
    stars: 4,
    description: "Almost the best",
    present: drone,
})

Rating.create({
    stars: 2,
    description: "Useless",
    present: drone,
})

Rating.create({
    stars: 3,
    description: "Again?",
    present: book,
})

Rating.create({
    stars: 5,
    description: "Just what I needed!",
    present: scarf,
})