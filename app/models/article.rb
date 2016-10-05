class Article < ApplicationRecord

  has_many :comments
	is_impressionable

  def self.search(search)
    where("title ILIKE ?", "%#{search}%") 
    # where("body ILIKE ?", "%#{search}%")
  end
end
