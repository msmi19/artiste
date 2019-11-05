category = Category.create(category_name: 'photography')

user1 = User.find_by(email: 'morgansmith0219@gmail.com')
Artwork.create!(title: 'Feel', image_url: 'nature-unsplash.jpg', price: '30.00', category_id: '1', user_id: user1.id)



user2 = User.find_by(email: 'doudoudif@outlook.de')
Artwork.create!(title: 'Haha', image_url: 'nature-unsplash.jpg', price: '70.00', category_id: '1', user_id: user2.id)

