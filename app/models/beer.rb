class Beer < ActiveRecord::Base
  belongs_to :style
  has_one :category, through: :style
end
