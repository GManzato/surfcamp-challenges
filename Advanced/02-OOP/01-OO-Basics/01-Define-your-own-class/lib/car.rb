class Car
  def initialize(model, brand, kilometers)
    @model = model
    @brand = brand
    @kilometers = kilometers
  end

  def fullname
  	"#{@brand} #{@model}"
  end
end
