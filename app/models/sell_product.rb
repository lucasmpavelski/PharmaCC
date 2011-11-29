class SellProduct < ActiveRecord::Base
  attr_accessible :id, :sell, :product

  belongs_to :sell
  belongs_to :product
end
