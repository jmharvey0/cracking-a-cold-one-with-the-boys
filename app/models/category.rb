class Category < ActiveRecord::Base
  has_many :styles
  has_many :beers, through: :styles
end
