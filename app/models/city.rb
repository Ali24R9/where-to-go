class City < ActiveRecord::Base
  has_many :ratings
  has_many :categories, through: :ratings
end
