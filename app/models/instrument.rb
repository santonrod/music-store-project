class Instrument < ActiveRecord::Base

belongs_to :user 
has_one :appointment

end


