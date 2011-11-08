class Sell < ActiveRecord::Base
  attr_accessible :products

  has_many :sell_products
  has_many :products, :through => :sell_products

  accepts_nested_attributes_for :sell_products
end
