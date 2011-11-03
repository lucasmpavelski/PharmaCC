class Provider < ActiveRecord::Base

  #attr_accessible :state_id

  #def state_id
    #city.state_id
  #end

  belongs_to :city
end
