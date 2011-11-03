class State < ActiveRecord::Base
  attr_accessible :city_id, :name

  has_many :cities, :providers
end
