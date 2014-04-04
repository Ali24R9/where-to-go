class Category < ActiveRecord::Base
  has_many :ratings
  has_many :cities, through: :ratings
end
