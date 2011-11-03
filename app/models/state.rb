class State < ActiveRecord::Base
  attr_accessible :city_id, :name, :id

  has_many :cities
end
