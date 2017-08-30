
10.times do
	category = Category.new({:name => Faker::Commerce.department(1)})
	category.save

end

100.times do
	product = Product.new({:name =>Faker::Commerce.product_name,:price =>Faker::Commerce.price(50..1000),:description => Faker::Lorem.sentence, :category_id => Category.all.sample.id })
	product.save
end