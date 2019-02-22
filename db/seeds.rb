
puts "Destroy ingredients"
Ingredient.destroy_all

puts "Destroy Cocktails"
Cocktail.destroy_all

lemon = Ingredient.create(name: "lemon")
mint = Ingredient.create(name: "mint")
chocolate = Ingredient.create(name: "chocolate")
chilli = Ingredient.create(name: "chilli")

big_lemon = Cocktail.create(name: "Big Lemon")
mint_mix = Cocktail.create(name: "Mint Mix")
choc_cake = Cocktail.create(name: "Chocolate Cake")
sweet_fire = Cocktail.create(name: "Swee Fire")

Dose.create(cocktail: big_lemon, ingredient: mint, description: "Lemon and Mint goodness")
Dose.create(cocktail: choc_cake, ingredient: chocolate, description: "Chocolate & whisky, name a better mix")
Dose.create(cocktail: sweet_fire, ingredient: chilli, description: "I lied, found a better mix")
