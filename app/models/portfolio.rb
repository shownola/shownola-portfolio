class Portfolio < ApplicationRecord
  has_many :technologies
  include Placeholder
  validates_presence_of :title, :subtitle, :body, :main_image, :thumb_image

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= Placeholder.image_generator(height: 600,width: 400, name: 'Company Name')
    self.thumb_image ||= Placeholder.image_generator(height: 400,width: 200, name: 'Company Name')
  end



end
