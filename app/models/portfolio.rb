class Portfolio < ApplicationRecord
  has_many :technologies
  accepts_nested_attributes_for :technologies, reject_if: lambda { |attrs| attrs['name'].blank? }

  include Placeholder
  validates_presence_of :title, :subtitle, :body, :main_image, :thumb_image

  def self.by_position
    order('position ASC')
  end

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= Placeholder.image_generator(height: 600,width: 400, name: 'Company Name')
    self.thumb_image ||= Placeholder.image_generator(height: 348,width: 225, name: 'Company Name')
  end



end
