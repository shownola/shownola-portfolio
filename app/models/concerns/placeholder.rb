module Placeholder
  extend ActiveSupport::Concern

  def self.image_generator(height:, width:, name:)
    "https://dummyimage.com/#{height}x#{width}/000/fff&text=#{name}"    
  end
end


  # "https://dummyimage.com/#{height}x#{width}/000/fff&text=Company+Name"
