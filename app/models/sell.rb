class Sell < ActiveRecord::Base
  attr_accessible :products, :product_tokens, :user

  belongs_to :user

  has_many :sell_products
  has_many :products, :through => :sell_products

  accepts_nested_attributes_for :sell_products
  
  attr_reader :product_tokens
  
  def product_tokens=(id)
    self.product_ids = id.split(",")
  end

  def total
    t = 0.0
    products.each{ |p| t += p.price }
    t
  end

end
