class Topic < ApplicationRecord

  validates :title, presence: true, uniqueness: true

  has_many :blogs

  def self.with_blogs
    includes(:blogs).where.not(blogs: { id: nil })
  end
end
