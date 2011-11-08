class SellProduct < ActiveRecord::Base
  belongs_to :sell
  belongs_to :product
end
