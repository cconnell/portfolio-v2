class BlogPost < ApplicationRecord
  validates :body, :title, presence: true
end
