class Instrument < ActiveRecord::Base

  belongs_to :user 
  has_one :appointment

  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

def carousel_image
  for i in 0..4
    instrument = @sold_instrument.each_slice(4).to_a
    instrument[0][i].avatar.url(:thumb) 
end
            

end  
end


