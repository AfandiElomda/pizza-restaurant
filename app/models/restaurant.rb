class Restaurant < ApplicationRecord
   # I've tried the seed replant after i deleted data from my database,how can regenerate deleted data??
   #could you give me feedback, thankyou!!

    has_many :restaurant_pizzas, dependent: :destroy
    has_many :pizzas , through: :restaurant_pizzas

end
