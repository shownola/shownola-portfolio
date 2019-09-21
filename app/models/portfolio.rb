class Portfolio < ApplicationRecord
  include Placeholder
  validates_presence_of :title, :subtitle, :body, :main_image, :thumb_image

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= Placeholder.image_generator(height: 600,width: 400, name: 'Company Name')
    self.thumb_image ||= Placeholder.image_generator(height: 400,width: 200, name: 'Company Name')
  end

  # def set_defaults
  #   self.main_image ||= 'https://dummyimage.com/600x400/000/fff&text=Company+Name'
  #   self.thumb_image ||= 'https://dummyimage.com/400x200/000/fff&text=Company+Name'
  #
  # end

end
