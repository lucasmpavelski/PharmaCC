class Provider < ActiveRecord::Base

  attr_accessible :state_id, :name, :cnpj, :city_id, :phone

  validates_presence_of :name, :cnpj, :city_id, :phone
  validates_uniqueness_of :cnpj

  def state_id
    if city_id.nil?
      @state_id
    else
      city.state_id
    end
  end

  belongs_to :city
end
