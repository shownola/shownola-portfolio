class Topic < ApplicationRecord  

  validates :title, presence: true, uniqueness: true

  has_many :blogs
end
