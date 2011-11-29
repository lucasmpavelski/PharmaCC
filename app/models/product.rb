class Product < ActiveRecord::Base
  belongs_to :provider

  has_many :sell_products
  has_many :sells, :through => :sell_products

  validates_presence_of :name, :code, :provider_id, :price, :amount
  validates_uniqueness_of :code

  accepts_nested_attributes_for :provider
  
  def provider_name
    provider.name
  end
end
