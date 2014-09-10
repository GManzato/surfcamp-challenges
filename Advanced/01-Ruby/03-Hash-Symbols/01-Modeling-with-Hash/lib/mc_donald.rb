

CALORIES_HASH = {
	"Cheese Burger" => 290,
	"Big Mac" => 300,
	"Mc Bacon" => 400,
	"Royal Cheese" => 130,
	"French fries" => 130,
	"Potatoes" => 130,
	"Coca" => 160,
	"Sprite" => 170
}	

ORDERS_HASH = {
	"Happy Meal" => [ "Cheese Burger", "French fries", "Coca" ],
	"Best Of Big Mac" => [ "Big Mac", "French fries", "Coca" ],
	"Best Of Royal Cheese" => [ "Royal Cheese", "Potatoes", "Sprite" ]
}


def poor_calories_counter(burger, side, beverage)
  #TODO: return number of calories for this mcDonald order
  CALORIES_HASH[burger] + CALORIES_HASH[side] + CALORIES_HASH[beverage]
end

def calories_counter(*orders)

  #TODO: return number of calories for a less constrained order
  total = 0
  orders.each do |order|

  	if CALORIES_HASH[order]
  		total += CALORIES_HASH[order]
  	else 
			ORDERS_HASH[order].each do |item|
  			total += CALORIES_HASH[item]
  		end
  	end
  end
  total
end

