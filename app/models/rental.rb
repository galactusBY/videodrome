class Rental < ApplicationRecord
  belongs_to :user
  belongs_to :customer
  belongs_to :movie

end
