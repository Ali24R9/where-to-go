class Rating < ActiveRecord::Base
  belongs_to :city
  belongs_to :category
  has_many :recommendations
end
