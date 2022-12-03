class RestaurantPizzaSerializer < ActiveModel::Serializer
    attributes :id, :pizza_id, :retaurant_id, :price

    has_many :pizzas
  end